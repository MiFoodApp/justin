#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
from mask_rcnn import *
import cv2

'''
D435i TOPICS
-------------


/camera/color/camera_info
/camera/color/image_raw
/camera/color/image_raw/compressed
/camera/color/image_raw/compressed/parameter_descriptions
/camera/color/image_raw/compressed/parameter_updates
/camera/color/image_raw/compressedDepth
/camera/color/image_raw/compressedDepth/parameter_descriptions
/camera/color/image_raw/compressedDepth/parameter_updates
/camera/color/image_raw/theora
/camera/color/image_raw/theora/parameter_descriptions
/camera/color/image_raw/theora/parameter_updates
/camera/depth/camera_info
/camera/depth/color/points
/camera/depth/image_raw
/camera/depth/image_raw/compressed
/camera/depth/image_raw/compressed/parameter_descriptions
/camera/depth/image_raw/compressed/parameter_updates
/camera/depth/image_raw/compressedDepth
/camera/depth/image_raw/compressedDepth/parameter_descriptions
/camera/depth/image_raw/compressedDepth/parameter_updates
/camera/depth/image_raw/theora
/camera/depth/image_raw/theora/parameter_descriptions
/camera/depth/image_raw/theora/parameter_updates
/camera/depth/points
/camera/infra1/camera_info
/camera/infra1/image_raw
/camera/infra1/image_raw/compressed
/camera/infra1/image_raw/compressed/parameter_descriptions
/camera/infra1/image_raw/compressed/parameter_updates
/camera/infra1/image_raw/compressedDepth
/camera/infra1/image_raw/compressedDepth/parameter_descriptions
/camera/infra1/image_raw/compressedDepth/parameter_updates
/camera/infra1/image_raw/theora
/camera/infra1/image_raw/theora/parameter_descriptions
/camera/infra1/image_raw/theora/parameter_updates
/camera/infra2/camera_info
/camera/infra2/image_raw
/camera/infra2/image_raw/compressed
/camera/infra2/image_raw/compressed/parameter_descriptions
/camera/infra2/image_raw/compressed/parameter_updates
/camera/infra2/image_raw/compressedDepth
/camera/infra2/image_raw/compressedDepth/parameter_descriptions
/camera/infra2/image_raw/compressedDepth/parameter_updates
/camera/infra2/image_raw/theora
/camera/infra2/image_raw/theora/parameter_descriptions
/camera/infra2/image_raw/theora/parameter_updates
/camera_ir/parameter_descriptions
/camera_ir/parameter_updates


'''

mrcnn = MaskRCNN()

color_images = []
depth_images = []
ir1_images = []
ir2_images = []

# Topics of all camera feeds
color_topic = '/camera/color/image_raw' 
depth_topic = '/camera/depth/image_raw'
ir1_topic = '/camera/infra1/image_raw'
ir2_topic = '/camera/infra2/image_raw'


class ImageListener:
    def __init__(self, topic, encoding):
        self.topic = topic
        self.data = None
        self.image = None
        self.encoding = encoding
        self.bridge = CvBridge()
        self.sub = rospy.Subscriber(topic, msg_Image, self.imageDepthCallback, None, 1)

    def imageDepthCallback(self, data):
        try:
            if self.topic == color_topic and data.header.frame_id == 'camera_color_optical_frame':   
                # Get object mask
                img = self.bridge.imgmsg_to_cv2(data, self.encoding)
                boxes, classes, contours, centers = mrcnn.detect_objects_mask(img)
                # # Draw object mask
                img = mrcnn.draw_object_mask(img)
                # Show depth info of the objects
                # mrcnn.draw_object_info(img, depth_frame)
                # Append image to global list
                color_images.append(img)
            elif self.topic == depth_topic:
                depth_images.append(self.bridge.imgmsg_to_cv2(data, self.encoding))
                self.pix = (data.width, data.height)
            elif self.topic == ir1_topic:
                ir1_images.append(self.bridge.imgmsg_to_cv2(data, self.encoding))
            elif self.topic == ir2_topic:
                ir2_images.append(self.bridge.imgmsg_to_cv2(data, self.encoding))
        except CvBridgeError as e:
            print(e)
            return


if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    print(f"{pathlib.Path(__file__).parent.resolve()}")
    color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    ir2_pic_listener = ImageListener(ir2_topic, "8UC1")

    while not rospy.is_shutdown():
        if len(color_images) != 0:
            img = color_images.pop()
            cv2.imshow(color_topic, img)
            color_images = []
        elif len(depth_images) != 0:
            img = depth_images.pop()
            if depth_pic_listener.pix == (1280, 720):
                cv2.imshow(depth_topic, img)
        elif len(ir1_images) != 0:
            cv2.imshow(ir1_topic, ir1_images.pop())
        elif len(ir2_images) != 0:
            cv2.imshow(ir2_topic, ir2_images.pop())

        cv2.waitKey(3)

    rospy.spin()