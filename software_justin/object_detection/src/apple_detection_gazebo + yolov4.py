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
import torch
from torchvision import transforms
from math import *
import numpy as np
import sensor_msgs.point_cloud2 as pc2
from geometry_msgs.msg import Point


RGB_FOV = [69,42]
FRAME_SIZE = [640,480]


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

start_time = time.time()

path= str(Path(__file__).parent.resolve())
pathb= path.replace('\\','/')


def get_output_layers(net):
    layer_names = net.getUnconnectedOutLayersNames()
    return layer_names

def draw_prediction(img, class_id, confidence, x, y, x_plus_w, y_plus_h):
    label = str(classes[class_id])
    color = COLORS[class_id]
    color = [0, 255 ,0]
    print(class_id)
    print(label)
    print(color)
    #if class_id == 47: #ONLY APPLES
    #if class_id = 49: #ONLY ORANGES
    #if class_id == 1: #ONLY PERSON
    center_x = (x + int(w / 2))
    center_y = (y + int(h / 2))
    center_point = (center_x, center_y)
    cv2.rectangle(img, (x, y), (x_plus_w, y_plus_h), color, 2)
    cv2.circle(img, center_point, 5, (0, 0, 255), -1)
    cv2.circle(img, ((x + int(w / 2)), y), 5, (155, 0, 255), -1)
    cv2.putText(img, label + " " + str(round(confidence, 2)), (x + 10, y - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.9, color, 2)
    
    depth_value = 0.95
    depth_cm, depth_in = convert_depth_to_units(depth_value)

    # Publish object coordinates
    apple_position = calculate_object_position(depth_cm, center_x, center_y)
    apple_coordinates = Point()

    # XYZ Apple
    apple_coordinates.x = apple_position[0]
    apple_coordinates.y = -apple_position[2]
    apple_coordinates.z = apple_position[1]

    apple_coordinates.x = 00
    apple_coordinates.y = 90
    apple_coordinates.z = 30
    #apple_coordinates_publisher.publish(apple_coordinates)

    print(apple_position)
    print(apple_coordinates)
    print("different frame")




# Load classes
classes = None
with open(f'{pathb}/yolov4.txt', 'r') as f:
    classes = [line.strip() for line in f.readlines()]
    print(classes)

# Generate random colors for each class
COLORS = np.random.uniform(0, 255, size=(len(classes), 3))

# Load the neural network
net = cv2.dnn.readNet(f'{pathb}/yolov4.weights', f'{pathb}/yolov4.cfg')




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
                #results = model(self.image, conf=0.5, show_boxes=True, show_conf=True, show_labels=True)
                #output = process_detections(results, self.image.shape)

                

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

if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    ir2_pic_listener = ImageListener(ir2_topic, "8UC1")

    ## Depth point cloud Subscriber
    sub_point_cloud = rospy.Subscriber(depth__point_topic, PointCloud2, depth_point_cloud_callback, None, queue_size=10)


    # Initialize variables for FPS calculation
    prev_time = time.time()
    frame_count = 0

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


            Width = instance_color_pic.shape[1]
            Height = instance_color_pic.shape[0]
            scale = 0.00392

            blob = cv2.dnn.blobFromImage(instance_color_pic, scale, (416, 416), (0, 0, 0), True, crop=False)
            net.setInput(blob)
            outs = net.forward(get_output_layers(net))

            class_ids = []
            confidences = []
            boxes = []
            conf_threshold = 0.6
            nms_threshold = 0.3

            for outr in outs:
                for detection in outr:
                    scores = detection[5:]
                    class_id = np.argmax(scores)
                    confidence = scores[class_id]
                    if confidence > conf_threshold:
                        center_x = int(detection[0] * Width)
                        center_y = int(detection[1] * Height)
                        w = int(detection[2] * Width)
                        h = int(detection[3] * Height)
                        x = center_x - w // 2
                        y = center_y - h // 2
                        class_ids.append(class_id)
                        confidences.append(float(confidence))
                        boxes.append([x, y, w, h])

            indices = cv2.dnn.NMSBoxes(boxes, confidences, conf_threshold, nms_threshold)

            if len(indices) > 0:
                for i in indices:
                    box = boxes[i]  # Access the box using the index directly
                    x, y, w, h = box[0], box[1], box[2], box[3]
                    print(class_ids[i])
                    draw_prediction(instance_color_pic, class_ids[i], confidences[i], round(x), round(y), round(x + w), round(y + h))
            else:
                print("No objects detected")

            # Calculate FPS
            current_time = time.time()
            elapsed_time = current_time - prev_time
            fps = 1 / elapsed_time
            prev_time = current_time
            frame_count += 1

            # Display FPS on the frame
            cv2.putText(instance_color_pic, f'FPS: {fps:.2f}', (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

            cv2.namedWindow("object detection", cv2.WINDOW_NORMAL) 

            cv2.imshow("object detection", cv2.resize(instance_color_pic,(720,480)))
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break




            img_ir1f = cv2.flip(instance_color_pic, 0) 
            cv2.imshow("flip",img_ir1f)

            cv2.imshow("grayimage",cv2.cvtColor(instance_color_pic, cv2.COLOR_BGR2GRAY))


            end = time.time()
            # print(f'Processing time: {end-start} s')  
            start = time.time()
        if len(depth_images) != 0:
            img = depth_images.pop()
            #print(img.shape)
            cv2.imshow(depth_topic, img)
            # cv2.imshow(depth_topic, depth_images.pop())
        if len(ir1_images) != 0:
            img_ir1 = ir1_images.pop()
            cv2.imshow(ir1_topic, img_ir1)
        if len(ir2_images) != 0:
            img_ir2 = ir2_images.pop()
            cv2.imshow(ir2_topic, img_ir2)
            #cv2.imshow(ir2_topic, ir2_images.pop())

        cv2.waitKey(3)
    rospy.spin()
