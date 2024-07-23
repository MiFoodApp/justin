#!/usr/bin/env python3

import rospy
import cv2
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image

class LoadImage(object):
    def __init__(self):
        self.image_sub = rospy.Subscriber("/camera/color/image_raw", Image, self.camera_callback)
        self.bridge_object = CvBridge()
    
    def camera_callback(self, data):
        try:
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding ="bgr8")
        except CvBridgeError as e:
            print(e)
        
        # comment line 20 and 21 and put 1 in line 23 instead of 0 for streaming images
        # path = "/home/fra/mifood_ws/src/justin/HarvestingRobot/src/lrwr_cv/images/"
        # camera_image = cv2.imwrite(path + 'camera_image.png', cv_image)
        # cv2.imshow('frame from camera', cv_image)
        cv2.waitKey(1)

if __name__ == '__main__':
    
    load_image_object = LoadImage()
    rospy.init_node('load_image_node', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()