; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((is_enable
    :reader is_enable
    :initarg :is_enable
    :type cl:boolean
    :initform cl:nil)
   (is_connected
    :reader is_connected
    :initarg :is_connected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-msg:<RobotStatus> is deprecated: use dobot_bringup-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'is_enable-val :lambda-list '(m))
(cl:defmethod is_enable-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-msg:is_enable-val is deprecated.  Use dobot_bringup-msg:is_enable instead.")
  (is_enable m))

(cl:ensure-generic-function 'is_connected-val :lambda-list '(m))
(cl:defmethod is_connected-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-msg:is_connected-val is deprecated.  Use dobot_bringup-msg:is_connected instead.")
  (is_connected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_connected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
    (cl:setf (cl:slot-value msg 'is_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_connected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "dobot_bringup/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "dobot_bringup/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "03c2e6f26397d687a7b9b9208ea5a445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "03c2e6f26397d687a7b9b9208ea5a445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "bool is_enable~%bool is_connected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "bool is_enable~%bool is_connected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':is_enable (is_enable msg))
    (cl:cons ':is_connected (is_connected msg))
))
