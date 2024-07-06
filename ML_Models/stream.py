import cv2
from ultralytics import YOLO
from pathlib import Path

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

def process_webcam():
    path = str(Path(__file__).parent.resolve()) + "/AppleV1.pt"
    model = YOLO(path)
    cap = cv2.VideoCapture(0, cv2.CAP_V4L2)

    

    while True:
        ret, frame = cap.read()
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
                label = result.names[int(boxes.cls[0])]
                confidence = boxes.conf[0]
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                cv2.putText(frame, f"{label}: {confidence:.2f}", (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

        cv2.imshow('Webcam Stream', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()

process_webcam()
