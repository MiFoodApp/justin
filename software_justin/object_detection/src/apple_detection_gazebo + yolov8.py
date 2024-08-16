#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image as msg_Image
from sensor_msgs.msg import PointCloud2
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
import cv2
from torchvision.io.image import read_image
from torchvision.transforms.functional import to_pil_image
import time
from pathlib import Path
from ultralytics import YOLO
import torch
from torchvision import transforms
from math import *
import numpy as np
import sensor_msgs.point_cloud2 as pc2

RGB_FOV = [69,42]
FRAME_SIZE = [640,480]


# Initialize variables for FPS calculation
prev_time = time.time()
frame_count = 0

path= str(Path(__file__).parent.resolve())
pathb= path.replace('\\','/')

path_model = str(Path(__file__).parent.resolve()) + "/yolov8n-seg.pt"
path_img = str(Path(__file__).parent.resolve())
model = YOLO(path_model)

one_time = True

color_images = []
depth_images = []
depth_point_images = []
ir1_images = []
ir2_images = []

# Topics of all camera feeds
color_topic = '/camera/color/image_raw' 
depth_topic = '/camera/depth/image_raw'
depth__point_topic = '/camera/depth/points'
ir1_topic = '/camera/infra1/image_raw'
ir2_topic = '/camera/infra2/image_raw'


bridge = CvBridge()
mask = None
start = time.time()

img = None

point_cloud_data = None

def depth_point_cloud_callback(data):
    global point_cloud_data
    point_cloud_data = data

def calculate_object_position(depth, x_center, y_center):
    # Calculate angles around x (horizontal and orthogonal to direction of view) and y axis (vertical)
    theta = x_center * (-RGB_FOV[0]/FRAME_SIZE[0]) + RGB_FOV[0]/2   # Rotation around the y-axis
    psi = y_center * (-RGB_FOV[1]/FRAME_SIZE[1]) + RGB_FOV[1]/2     # Rotation around the x-axis
    # Calculate the x- and y-coordinate
    x = sin(theta) * depth
    y = sin(psi) * depth
    z = cos(theta) * cos(psi) * depth
    return [x,y,z]

def resize_frame(frame, size=(FRAME_SIZE[0], FRAME_SIZE[1])):
    """Resize frame to specific dimensions."""
    return cv2.resize(frame, size, interpolation=cv2.INTER_LINEAR)

def map_coordinates(coords, img_shape):
    # Implement coordinate mapping logic here
    return coords

def process_detections(detections, img_shape):
    output = []
    for detection in detections:
        boxes = detection.boxes.cpu().numpy()
        if len(boxes) == 0:  
            continue

        for box, mask, conf, cls in zip(boxes.xyxy, detection.masks.cpu().numpy(), boxes.conf, boxes.cls):
            class_name = detection.names[int(cls)]
            mapped_bbox = map_coordinates(box, img_shape)
            x_center = (mapped_bbox[0] + mapped_bbox[2]) / 2
            y_center = (mapped_bbox[1] + mapped_bbox[3]) / 2
            center_point = (x_center, y_center)

            detection_data = {
                "class": class_name,
                "bbox": mapped_bbox,
                "mask": mask,
                "confidence": conf,
                "center_point": center_point
            }

            output.append(detection_data)

    return output

def print_detections(detections):
    if not detections:
        print("No objects detected.")
    else:
        for i, detection in enumerate(detections, start=1):
            print(f"Detection {i}:")
            print(f"  Class: {detection['class']}")
            print(f"  Bounding Box: {detection['bbox']}")
            print(f"  Center Point: {detection['center_point']}")
            print(f"  Confidence: {detection['confidence']:.2f}")
            if detection['mask'] is not None:
                print(f"  Segmentation Mask: {detection['mask'].shape}")
            print()

def convert_depth_to_units(depth_value):
    depth_cm = depth_value * 100  
    depth_in = depth_cm / 2.54    
    return depth_cm, depth_in

def calculate_width(mask, y_center):
    if mask.ndim == 2:
        center_row = mask[y_center]
    elif mask.ndim == 3:
        center_row = mask[y_center, :]
    else:
        return None
    true_indices = np.where(center_row > 0.5)[0]  
    if len(true_indices) > 0:
        left_edge = true_indices[0]
        right_edge = true_indices[-1]
        return right_edge - left_edge
    return None

def display_frame(frame, results):
    for result in results:
        boxes = result.boxes.cpu().numpy()
        masks = result.masks.data if result.masks is not None else None
        for i, (box, cls) in enumerate(zip(boxes.xyxy, boxes.cls)):
            x1, y1, x2, y2 = map(int, box[:4])
            class_name = result.names[int(cls)]
            x_center = int((x1 + x2) / 2)
            y_center = int((y1 + y2) / 2)
            depth_value = 0.95
            depth_cm, depth_in = convert_depth_to_units(depth_value)
            cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.putText(frame, class_name, (x1, y1 - 40), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
            depth_label = f"Depth: {depth_value:.2f}m ({depth_cm:.2f}cm / {depth_in:.2f}in)"
            cv2.putText(frame, depth_label, (x1, y1 - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 2)
            cv2.circle(frame, (x_center , y_center), 5, (0, 0, 255), -1)

            if masks is not None:
                mask = masks[i].cpu().numpy()
                width_pixels = calculate_width(mask, y_center)
                if width_pixels is not None:
                    width_cm = width_pixels * (depth_cm / frame.shape[1])
                    width_in = width_cm / 2.54
                    width_label = f"Width: {width_cm:.2f}cm / {width_in:.2f}in"
                    cv2.putText(frame, width_label, (x1, y1), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
    return frame

fps = 0
frame_count = 0
start_time = time.time()


class ImageListener: 
    def __init__(self, topic, encoding):
        self.topic = topic
        self.data = None
        self.image = None
        self.encoding = encoding
        self.sub = rospy.Subscriber(topic, msg_Image, self.imageDepthCallback)

    def imageDepthCallback(self, data):
        global mask
        global img
        try:

            if self.topic == color_topic and data.header.frame_id == 'camera_color_optical_frame': 
                ## Get object mask

                self.image = bridge.imgmsg_to_cv2(data, self.encoding)
                self.image = resize_frame(self.image)
                # cv2.imwrite(f"{path_img}/img.png", img)
                # img = cv2.imread(f"{path_img}/img.png")

                ## Step 3: Perform classification
                
            elif self.topic == depth_topic and data.header.frame_id == 'camera_depth_optical_frame':
                depth_images.append(resize_frame(bridge.imgmsg_to_cv2(data, self.encoding)))
                self.pix = (data.width, data.height)
            elif self.topic == ir1_topic:
                ir1_images.append(resize_frame(bridge.imgmsg_to_cv2(data, self.encoding)))
            elif self.topic == ir2_topic:
                ir2_images.append(resize_frame(bridge.imgmsg_to_cv2(data, self.encoding)))
                

        except CvBridgeError as e:
            print(e)
            return


L = []
# Using readlines()
file1 = open(f'{path_img}/yolov4.txt', 'r')
Lines = file1.readlines()

count = 0
# Strips the newline character
for line in Lines:
    count += 1
    L.append("{}".format(line.strip()))

print(L)

if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    ir2_pic_listener = ImageListener(ir2_topic, "8UC1")

    ## Depth point cloud Subscriber
    sub_point_cloud = rospy.Subscriber(depth__point_topic, PointCloud2, depth_point_cloud_callback, None, queue_size=10)

    while not rospy.is_shutdown(): 
        if point_cloud_data is not None:
            # print(f'{point_cloud_data.height = }')
            # print(f'{point_cloud_data.width = }')
            # print(f'{point_cloud_data.fields = }')
            print(len(list(pc2.read_points(point_cloud_data, field_names=("x","y","z"), skip_nans=True))))
            try:
                print(list(pc2.read_points(point_cloud_data, field_names=("z"), skip_nans=True))[153600]) 
            except:
                pass
            # point_cloud_data = np.array(point_cloud_data.data)
            # print(np.info(point_cloud_data))
            # print(point_cloud_data)
            pass
        if color_pic_listener.image is not None:
            cv2.imshow('Camera Stream', color_pic_listener.image)

            instance_color_pic = color_pic_listener.image

            # frame = resize_frame(color_pic_listener.image)
            # cv2.imshow('Camera 2', frame)

            # frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            # cv2.imshow('Camera 3', frame)

            # bgrinfrared_frame = cv2.cvtColor(frame, cv2.COLOR_GRAY2BGR)
            # cv2.imshow('Camera 4', bgrinfrared_frame)

            results = model(instance_color_pic, show=True , conf=0.7, show_conf=True, show_labels=True, device=0)


            xyxys = []
            confidences = []
            class_ids = []
            
            for result in results:
                boxes = result.boxes.cpu().numpy()
                xyxys.append(boxes.xyxy)
                confidences.append(boxes.conf)
                class_ids.append(boxes.cls)
                print(3323232323)
                print(class_ids)
                print(Lines[7])
                print(454545454545)
                for idx, box in enumerate(xyxys[-1]):
                    pit= L[int(class_ids[-1][idx])]
                    x_center = int((box[0] + box[2]) / 2)
                    y_center = int((box[1] + box[3]) / 2)
                    print(f"Object {idx + 1} - Class {class_ids[-1][idx]}, Coordinates: {box}, Center Point: ({x_center}, {y_center})")
                    cv2.putText(instance_color_pic, pit, (int(box[0]), int(box[1])-20), cv2.FONT_HERSHEY_PLAIN, 2, (155, 55, 0), 4)



                for box in xyxys[-1]:
                    cv2.rectangle(instance_color_pic, (int(box[0]), int(box[1])), (int(box[2]), int(box[3])), (0, 255, 0), 2)
                    center_point = (x_center, y_center)

                    cv2.circle(instance_color_pic, center_point, 5, (0, 0, 255), -1)
                    cv2.circle(instance_color_pic, (x_center, int(box[1])), 5, (155, 0, 255), -1)
                    

                # for ids in class_ids:
                #     ids= ids.astype(int)
                #     print(ids)
                #     print("Hello")
                #     for mom in ids:
                #         print(L[mom]) 
                #     print("Bye")


                    

    # Calculate FPS
            current_time = time.time()
            elapsed_time = current_time - prev_time
            fps = 1 / elapsed_time
            prev_time = current_time
            frame_count += 1

        # Display FPS on the frame
            cv2.putText(instance_color_pic, f'FPS: {fps:.2f}', (10, 40), cv2.FONT_HERSHEY_PLAIN, 2, (155, 0, 0), 2)






            print(11111111111111111111111)
            print(instance_color_pic)
            print(11111111111111111111111)



            cv2.imshow('Frame', instance_color_pic)
    

            #print(backtorgb)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                break




            end = time.time()
            # print(f'Processing time: {end-start} s')  
            start = time.time()
        if len(depth_images) != 0:
            img = depth_images.pop()
            #print(img.shape)
            cv2.imshow(depth_topic, img)
            # cv2.imshow(depth_topic, depth_images.pop())
        if len(ir1_images) != 0:
            cv2.imshow(ir1_topic, ir1_images.pop())
        if len(ir2_images) != 0:
            cv2.imshow(ir2_topic, ir2_images.pop())

        cv2.waitKey(3)
    rospy.spin()
