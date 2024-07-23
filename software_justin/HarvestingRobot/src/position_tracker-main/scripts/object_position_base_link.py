#!/usr/bin/env python3
import rospy
import tf
from geometry_msgs.msg import Point
from geometry_msgs.msg import PointStamped
from position_tracker.srv import GetPosition, GetPositionResponse

class ConversionFrameServer(object):
    def __init__(self):
        self.frame_sub = rospy.Subscriber("/object_position_camera_frame", Point, self.conversion_callback)
        self.server = rospy.Service("/get_position", GetPosition, self.handle_get_position)
        self.listener = tf.TransformListener()
        self.listener.waitForTransform("/base_link", "/camera_link", rospy.Time(0), rospy.Duration(4.0))

        
    
    def conversion_callback(self, data):
        # convert coordinate from camera link to base link
        point_camera = PointStamped()
        point_camera.header.frame_id = "camera_link"
        point_camera.header.stamp = rospy.Time(0)
        point_camera.point.x = data.x
        point_camera.point.y = data.y
        point_camera.point.z = data.z

        # trasform the point to the base_link frame
        self.point_base = self.listener.transformPoint('base_link',point_camera)

    def handle_get_position(self, req):
        if req:
            res = GetPositionResponse()

            res.x_position = self.point_base.point.x
            res.y_position = self.point_base.point.y
            res.z_position = self.point_base.point.z

            rospy.loginfo("Object position in base_link: x = %f, y = %f, z = %f" %(self.point_base.point.x, self.point_base.point.y, self.point_base.point.z))
        return res

if __name__ == '__main__':

    rospy.init_node('frame_conversion_server', anonymous=True)  
    conversion_server = ConversionFrameServer()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
   