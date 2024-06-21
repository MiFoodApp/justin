import cv2
from realsense_camera import *
from mask_rcnn import *

# Load Realsense camera
rs = RealsenseCamera()
mrcnn = MaskRCNN()

while True:
	# Get frame in real time from Realsense camera
	ret, bgr_frame, depth_frame = rs.get_frame_stream()

	point= (400, 300)
	height, width = depth_frame.shape

	distance = depth_frame[point[1], point[0]]
	print(f"{distance = }")
	print(f"{height = }")
	print(f"{width = }")
	print("\n")

	# Get object mask
	boxes, classes, contours, centers = mrcnn.detect_objects_mask(bgr_frame)

	# Draw object mask
	bgr_frame = mrcnn.draw_object_mask(bgr_frame)

	# Show depth info of the objects
	mrcnn.draw_object_info(bgr_frame, depth_frame)

	cv2.imshow("depth frame", depth_frame)
	cv2.imshow("Bgr frame", bgr_frame)

	key = cv2.waitKey(1)
	if key == 27:
		break

rs.release()
cv2.destroyAllWindows()