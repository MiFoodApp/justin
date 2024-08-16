#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
import cv2
from torchvision.io.image import read_image
from torchvision.transforms.functional import to_pil_image
import time
from pathlib import Path
import cv2
from ultralytics import YOLO
from pathlib import Path
import torch
from torchvision import transforms

path_model = str(Path(__file__).parent.resolve()) + "/yolov8n.pt"
path_img = str(Path(__file__).parent.resolve())
model = YOLO(path_model)

# cap = cv2.VideoCapture(0, cv2.CAP_V4L2)     # Trigger V4L2 before GStreamer back-end 

one_time = True

color_images = []
depth_images = []
ir1_images = []
ir2_images = []

# Topics of all camera feeds
color_topic = '/camera/color/image_raw' 
depth_topic = '/camera/depth/image_raw'
ir1_topic = '/camera/infra1/image_raw'
ir2_topic = '/camera/infra2/image_raw'


bridge = CvBridge()
mask = None
start = time.time()

img = None

def resize_frame(frame, size=(640, 640)):
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
                # Get object mask
                self.image = bridge.imgmsg_to_cv2(data, self.encoding)
                # img = cv2.imread(f"{path_img}/img.png")

                # Step 3: Perform classification
                results = model(self.image, conf=0.8, show_boxes=True, show_conf=True, show_labels=True)
                # output = process_detections(results, img.shape)
                # print_detections(output)
                for result in results:
                    boxes = result.boxes.cpu().numpy()
                    for box in boxes.xyxy:
                        x1, y1, x2, y2 = [int(coord) for coord in box]
                        label = result.names[int(boxes.cls[0])]
                        confidence = boxes.conf[0]
                        cv2.rectangle(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
                        cv2.putText(img, f"{label}: {confidence:.2f}", (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
            elif self.topic == depth_topic and data.header.frame_id == 'camera_depth_optical_frame':
                depth_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
                self.pix = (data.width, data.height)
            elif self.topic == ir1_topic:
                ir1_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
            elif self.topic == ir2_topic:
                ir2_images.append(bridge.imgmsg_to_cv2(data, self.encoding))
            
            

        except CvBridgeError as e:
            print(e)
            return

if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    ir2_pic_listener = ImageListener(ir2_topic, "8UC1")

    while not rospy.is_shutdown(): 
        if color_pic_listener.image is not None:
            # print("\n\nCheck\n\n")
            cv2.imshow('Webcam Stream', color_pic_listener.image)
            end = time.time()
            #print(f'Processing time: {end-start} s')  
            start = time.time()
        if len(depth_images) != 0:
            img = depth_images.pop()
            cv2.imshow(depth_topic, img)
        elif len(ir1_images) != 0:
            cv2.imshow(ir1_topic, ir1_images.pop())
        elif len(ir2_images) != 0:
            cv2.imshow(ir2_topic, ir2_images.pop())

        cv2.waitKey(3)

    rospy.spin()