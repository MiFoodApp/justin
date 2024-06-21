#!/usr/bin/env python3

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

import rospy
from sensor_msgs.msg import Image as msg_Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import os
from mask_rcnn import *
import cv2
import pathlib

mrcnn = MaskRCNN()

class ImageListener:
    def __init__(self, topic, encoding):
        self.topic = topic
        self.image = None
        self.encoding = encoding
        self.bridge = CvBridge()
        self.sub = rospy.Subscriber(topic, msg_Image, self.imageDepthCallback)

    def imageDepthCallback(self, data):
        try:
            self.image = self.bridge.imgmsg_to_cv2(data, self.encoding) 
            cv2.imshow(self.topic, self.image)
            cv2.waitKey(3)

            pix = (data.width, data.height)
            print(f'{pix = }')

            # cv_image = np.array(cv_image, dtype=np.uint8)
            
            
            # sys.stdout.write('%s: Depth at center(%d, %d): %f(mm)\r' % (self.topic, pix[0], pix[1], cv_image[pix[1], pix[0]]))
            # sys.stdout.flush()
        except CvBridgeError as e:
            print(e)
            return


if __name__ == '__main__':
    rospy.init_node("depth_image_processor")
    color_topic = '/camera/color/image_raw'  # check the depth image topic in your Gazebo environmemt and replace this with your
    depth_topic = '/camera/depth/image_raw'
    ir1_topic = '/camera/infra1/image_raw'
    # color_pic_listener = ImageListener(color_topic, "bgr8")
    depth_pic_listener = ImageListener(depth_topic, "16SC1")
    # ir1_pic_listener = ImageListener(ir1_topic, "8UC1")
    
    # while not rospy.is_shutdown():
    #     cv2.imshow(color_pic_listener.topic, color_pic_listener.image)
    #     #cv2.imshow(depth_pic_listener.topic, depth_pic_listener.image)
    #     cv2.imshow(ir1_pic_listener.topic, ir1_pic_listener.image)
    #     cv2.waitKey(3)

    rospy.spin()