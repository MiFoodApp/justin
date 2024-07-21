#!/usr/bin/env python3

import cv2
import pyrealsense2 as rs
from ultralytics import YOLO
import numpy as np
import time
import rospy
from std_msgs.msg import Int16MultiArray
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
from pathlib import Path
from math import *

RGB_FOV = [69,42]
FRAME_SIZE = [640,480]

def calculate_object_position(depth, x_center, y_center):
    # Calculate angles around x (horizontal and orthogonal to direction of view) and y axis (vertical)
    theta = x_center * (-RGB_FOV[0]/FRAME_SIZE[0]) + RGB_FOV[0]/2   # Rotation around the y-axis
    psi = y_center * (-RGB_FOV[1]/FRAME_SIZE[1]) + RGB_FOV[1]/2     # Rotation around the x-axis
    # Calculate the x- and y-coordinate
    x = sin(theta) * depth
    y = sin(psi) * depth
    z = cos(theta) * cos(psi) * depth
    return [x,y,z]

def map_coordinates(coords, img_shape):
    return coords

def get_depth_value(depth_frame, x, y):
    return depth_frame.get_distance(x, y)

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

def process_detections(detections, img_shape, depth_frame):
    output = []
    for detection in detections:
        boxes = detection.boxes.cpu().numpy()
        masks = detection.masks.data if detection.masks is not None else None
        if len(boxes) == 0:
            continue
        for i, (box, conf, cls) in enumerate(zip(boxes.xyxy, boxes.conf, boxes.cls)):
            class_name = detection.names[int(cls)]
            mapped_bbox = map_coordinates(box, img_shape)
            x_center = int((mapped_bbox[0] + mapped_bbox[2]) / 2)
            y_center = int((mapped_bbox[1] + mapped_bbox[3]) / 2)
            depth_value = get_depth_value(depth_frame, x_center, y_center)
            depth_cm, depth_in = convert_depth_to_units(depth_value)
    
            # Publish object coordinates
            apple_position = calculate_object_position(depth_cm, x_center, y_center)
            apple_coordinates = Int16MultiArray()
            apple_coordinates.data.append(apple_position[0])
            apple_coordinates.data.append(apple_position[1])
            apple_coordinates.data.append(apple_position[2])
            apple_coordinates_publisher.publish(apple_coordinates)

            width_pixels = None
            width_cm = None
            width_in = None
            if masks is not None:
                mask = masks[i].cpu().numpy()
                width_pixels = calculate_width(mask, y_center)
                if width_pixels is not None:
                    width_cm = width_pixels * (depth_cm / img_shape[1])
                    width_in = width_cm / 2.54

            detection_data = {
                "class": class_name,
                "bbox": mapped_bbox,
                "confidence": conf,
                "center_point": (x_center, y_center),
                "depth_meters": depth_value,
                "depth_cm": depth_cm,
                "depth_in": depth_in,
                "width_pixels": width_pixels,
                "width_cm": width_cm,
                "width_in": width_in
            }

            output.append(detection_data)
    return output

def print_detections(detections):
    if not detections:
        print("No objects detected.")
    else:
        for i, detection in enumerate(detections, start=1):
            print(f"Detection {i}:")
            print(f" Class: {detection['class']}")
            print(f" Bounding Box: {detection['bbox']}")
            print(f" Center Point: {detection['center_point']}")
            print(f" Depth: {detection['depth_meters']:.2f} meters ({detection['depth_cm']:.2f} cm / {detection['depth_in']:.2f} inches)")
            print(f" Confidence: {detection['confidence']:.2f}")
            if detection['width_pixels'] is not None:
                print(f" Width: {detection['width_pixels']} pixels ({detection['width_cm']:.2f} cm / {detection['width_in']:.2f} inches)")
            print()

def display_frame(frame, results, depth_frame):
    for result in results:
        boxes = result.boxes.cpu().numpy()
        masks = result.masks.data if result.masks is not None else None
        for i, (box, cls) in enumerate(zip(boxes.xyxy, boxes.cls)):
            x1, y1, x2, y2 = map(int, box[:4])
            class_name = result.names[int(cls)]
            x_center = int((x1 + x2) / 2)
            y_center = int((y1 + y2) / 2)
            depth_value = get_depth_value(depth_frame, x_center, y_center)
            depth_cm, depth_in = convert_depth_to_units(depth_value)
            cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.putText(frame, class_name, (x1, y1 - 40), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
            depth_label = f"Depth: {depth_value:.2f}m ({depth_cm:.2f}cm / {depth_in:.2f}in)"
            cv2.putText(frame, depth_label, (x1, y1 - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 2)
            if masks is not None:
                mask = masks[i].cpu().numpy()
                width_pixels = calculate_width(mask, y_center)
                if width_pixels is not None:
                    width_cm = width_pixels * (depth_cm / frame.shape[1])
                    width_in = width_cm / 2.54
                    width_label = f"Width: {width_cm:.2f}cm / {width_in:.2f}in"
                    cv2.putText(frame, width_label, (x1, y1), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
    return frame

def process_realsense():
    path = str(Path(__file__).parent.resolve()) + "/AppleV1.pt"
    model = YOLO(path)
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.color, FRAME_SIZE[0], FRAME_SIZE[1], rs.format.bgr8, 30)
    config.enable_stream(rs.stream.depth, FRAME_SIZE[0], FRAME_SIZE[1], rs.format.z16, 30)
    pipeline.start(config)

    fps = 0
    frame_count = 0
    start_time = time.time()

    try:
        while True:
            frames = pipeline.wait_for_frames()
            color_frame = frames.get_color_frame()
            depth_frame = frames.get_depth_frame()

            if not color_frame or not depth_frame:
                continue

            frame_rgb = np.asanyarray(color_frame.get_data())
            frame_depth = np.asanyarray(depth_frame.get_data())

            results = model(frame_rgb, conf=0.7, show_conf=False, show_labels=False, device=0)
            output = process_detections(results, frame_rgb.shape, depth_frame)
            print_detections(output)

            for result in results:
                boxes = result.boxes.cpu().numpy()
                for box in boxes.xyxy:
                    x1, y1, x2, y2 = [int(coord) for coord in box]
                    # Augment image with rectangle and label
                    label = result.names[int(boxes.cls[0])]
                    confidence = boxes.conf[0]
                    cv2.rectangle(frame_rgb, (x1, y1), (x2, y2), (0, 255, 0), 2)
                    cv2.putText(frame_rgb, f"{label}: {confidence:.2f}", (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)


            frame_rgb = display_frame(frame_rgb, results, depth_frame)
            frame_count += 1
            if frame_count >= 10:
                end_time = time.time()
                fps = frame_count / (end_time - start_time)
                frame_count = 0
                start_time = end_time

            cv2.putText(frame_rgb, f"FPS: {fps:.2f}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 0, 0), 2, cv2.LINE_AA)
            cv2.imshow('RealSense Stream', cv2.resize(frame_rgb, (960, 540)))
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    finally:
        pipeline.stop()
        cv2.destroyAllWindows()
        rospy.signal_shutdown("Signal Shutdown")

if __name__ == "__main__":
    apple_coordinates_publisher = rospy.Publisher("apple_coordinates", Int16MultiArray, queue_size=10)
    rospy.init_node("intel_d435_stream")
    process_realsense()
