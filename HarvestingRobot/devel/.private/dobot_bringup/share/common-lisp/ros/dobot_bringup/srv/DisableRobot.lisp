; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DisableRobot-request.msg.html

(cl:defclass <DisableRobot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DisableRobot-request (<DisableRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisableRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisableRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DisableRobot-request> is deprecated: use dobot_bringup-srv:DisableRobot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisableRobot-request>) ostream)
  "Serializes a message object of type '<DisableRobot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisableRobot-request>) istream)
  "Deserializes a message object of type '<DisableRobot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisableRobot-request>)))
  "Returns string type for a service object of type '<DisableRobot-request>"
  "dobot_bringup/DisableRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableRobot-request)))
  "Returns string type for a service object of type 'DisableRobot-request"
  "dobot_bringup/DisableRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisableRobot-request>)))
  "Returns md5sum for a message object of type '<DisableRobot-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisableRobot-request)))
  "Returns md5sum for a message object of type 'DisableRobot-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisableRobot-request>)))
  "Returns full string definition for message of type '<DisableRobot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisableRobot-request)))
  "Returns full string definition for message of type 'DisableRobot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisableRobot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisableRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DisableRobot-request
))
;//! \htmlinclude DisableRobot-response.msg.html

(cl:defclass <DisableRobot-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DisableRobot-response (<DisableRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisableRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisableRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DisableRobot-response> is deprecated: use dobot_bringup-srv:DisableRobot-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DisableRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisableRobot-response>) ostream)
  "Serializes a message object of type '<DisableRobot-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisableRobot-response>) istream)
  "Deserializes a message object of type '<DisableRobot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisableRobot-response>)))
  "Returns string type for a service object of type '<DisableRobot-response>"
  "dobot_bringup/DisableRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableRobot-response)))
  "Returns string type for a service object of type 'DisableRobot-response"
  "dobot_bringup/DisableRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisableRobot-response>)))
  "Returns md5sum for a message object of type '<DisableRobot-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisableRobot-response)))
  "Returns md5sum for a message object of type 'DisableRobot-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisableRobot-response>)))
  "Returns full string definition for message of type '<DisableRobot-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisableRobot-response)))
  "Returns full string definition for message of type 'DisableRobot-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisableRobot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisableRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DisableRobot-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DisableRobot)))
  'DisableRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DisableRobot)))
  'DisableRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableRobot)))
  "Returns string type for a service object of type '<DisableRobot>"
  "dobot_bringup/DisableRobot")