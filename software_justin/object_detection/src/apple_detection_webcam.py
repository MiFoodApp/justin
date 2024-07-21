#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int16MultiArray
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
import cv2
import time
from pathlib import Path
import cv2
from ultralytics import YOLO
from pathlib import Path
import torch

RGB_FOV = [69,42]
FRAME_SIZE = [640,480]

color_images = []
depth_images = []
ir1_images = []
ir2_images = []

bridge = CvBridge()
mask = None
start = time.time()

img = None

def calc_object_angles(x_center, y_center):
    theta = x_center * (-RGB_FOV[0]/FRAME_SIZE[0]) + RGB_FOV[0]/2
    psi = y_center * (-RGB_FOV[1]/FRAME_SIZE[1]) + RGB_FOV[1]/2
    return [theta, psi]

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

            [theta,  psi] = calc_object_angles(x_center, y_center)
            print(f'\n\n{theta = }')
            print(f'{psi = }\n\n')

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


def process_webcam():
    path = str(Path(__file__).parent.resolve()) + "/AppleV1.pt"
    model = YOLO(path)
    cap = cv2.VideoCapture(0, cv2.CAP_V4L2)

    while True:
        ret, frame = cap.read()
        frame = resize_frame(frame)
        if not ret:
            print(f'{ret = }')
            break

        results = model(frame, conf=0.3, show_boxes=True, show_conf=True, show_labels=True)
        output = process_detections(results, frame.shape)

        print_detections(output)

        for result in results:
            boxes = result.boxes.cpu().numpy()
            for box in boxes.xyxy:
                x1, y1, x2, y2 = [int(coord) for coord in box]

                # Publish apple coordinates
                apple_coordinates = Int16MultiArray()
                apple_coordinates.data.append(x1)
                apple_coordinates.data.append(y1)
                apple_coordinates.data.append(x2)
                apple_coordinates.data.append(y2)
                apple_coordinates_publisher.publish(apple_coordinates)

                # Augment image with rectangle and label
                label = result.names[int(boxes.cls[0])]
                confidence = boxes.conf[0]
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                cv2.putText(frame, f"{label}: {confidence:.2f}", (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

        #  FUNCTIONALITY ?!
        cv2.imshow('Webcam Stream', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    rospy.signal_shutdown("Node Termination")
    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    apple_coordinates_publisher = rospy.Publisher("apple_coordinates_publisher", Int16MultiArray, queue_size=10)
    rospy.init_node("intel_d435_feed")
    process_webcam()