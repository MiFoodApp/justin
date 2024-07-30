import cv2
import numpy as np
import time
import datetime
import rospy
from std_msgs.msg import Int16MultiArray
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
from pathlib import Path
from math import *
from geometry_msgs.msg import Point

#RGB_FOV = [69,42]
RGB_FOV = [87,58]
FRAME_SIZE = [640,480]

apple_coordinates_publisher = rospy.Publisher("/object_position_camera_frame", Point, queue_size=10)
rospy.init_node("intel_d435_stream")

def calculate_object_position(depth, x_center, y_center):
    # Calculate angles around x (horizontal and orthogonal to direction of view) and y axis (vertical) Right hand rule
    theta = x_center * (-RGB_FOV[0]/FRAME_SIZE[0]) + RGB_FOV[0]/2   # Rotation around the y-axis   left is + and right is -
    psi = y_center * (-RGB_FOV[1]/FRAME_SIZE[1]) + RGB_FOV[1]/2     # Rotation around the x-axis   down is - and up is +
    
    radtheta = radians(theta)
    radpsi = radians(psi)

    print("theta is:")
    print(radtheta)
    print("psi is")
    print(radpsi)
    # Calculate the x- and y-coordinate
    x = -sin(radtheta) * depth
    y =  sin(radpsi) * depth
    z = cos(radtheta) * cos(radpsi) * depth

    return [x,y,z,theta,psi]

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

    #apple_coordinates.x = 00
    #apple_coordinates.y = -90
    #apple_coordinates.z = 30
    apple_coordinates_publisher.publish(apple_coordinates)

    print(apple_position)
    print(apple_coordinates)



# Load classes
classes = None
with open(f'{pathb}/yolov3.txt', 'r') as f:
    classes = [line.strip() for line in f.readlines()]
    print(classes)

# Generate random colors for each class
COLORS = np.random.uniform(0, 255, size=(len(classes), 3))

# Load the neural network
net = cv2.dnn.readNet(f'{pathb}/yolov3.weights', f'{pathb}/yolov3.cfg')

# Load the video
video = cv2.VideoCapture(2)
cap = video

fpsb = int(cap.get(cv2.CAP_PROP_FPS))
widthb = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
heightb = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

timenow = "".join(list([val for val in str(datetime.datetime.now()) if val.isalpha() or val.isnumeric()]))
print(str(Path(__file__).parent.resolve()))



cap.set(3,640)
cap.set(4,480)
cap.set(cv2.CAP_PROP_FPS, 60)
print(fpsb)
print(widthb)
print(heightb)
# Define the codec and create VideoWriter object
#fourcc = cv2.VideoWriter_fourcc(*"XVID")   ### .avi
#fpsb=240 ###   for fast and smooth video
fourcc = cv2.VideoWriter_fourcc(*"MP4V")
out = cv2.VideoWriter(f'{pathb}/videos/{timenow}pre.mp4', fourcc, fpsb, (widthb,heightb))
outb = cv2.VideoWriter(f'{pathb}/videos/{timenow}post.mp4', fourcc, fpsb, (widthb,heightb))

# Initialize variables for FPS calculation
prev_time = time.time()
frame_count = 0

while True:
    ret, frame = video.read()
    if not ret:
        break

    out.write(frame)


    Width = frame.shape[1]
    Height = frame.shape[0]
    scale = 0.00392

    blob = cv2.dnn.blobFromImage(frame, scale, (416, 416), (0, 0, 0), True, crop=False)
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
            draw_prediction(frame, class_ids[i], confidences[i], round(x), round(y), round(x + w), round(y + h))
    else:
        print("No objects detected")

    # Calculate FPS
    current_time = time.time()
    elapsed_time = current_time - prev_time
    fps = 1 / elapsed_time
    prev_time = current_time
    frame_count += 1

    # Display FPS on the frame
    cv2.putText(frame, f'FPS: {fps:.2f}', (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

    outb.write(frame)


    cv2.imshow("object detection", cv2.resize(frame,(720,480)))
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# After the loop ends, calculate the average FPS
avg_fps = frame_count / (time.time() - start_time)

# Print the average FPS
print(f'Average FPS: {avg_fps:.2f}')

# Release the video capture and close windows
cap.release()
out.release()
outb.release()
video.release()
cv2.destroyAllWindows()
rospy.signal_shutdown("Signal Shutdown")

