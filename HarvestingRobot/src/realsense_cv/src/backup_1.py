import cv2
from realsense_camera import *
#from mask_rcnn import *

# Load Realsense camera
rs = RealsenseCamera()

# Get frame in real time from Realsense camera
ret, bgr_frame, depth_frame = rs.get_frame_stream()

cv2.imshow("Bgr frame", bgr_frame)
cv2.waitKey(0)
