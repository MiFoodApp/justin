; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ResetRobot-request.msg.html

(cl:defclass <ResetRobot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetRobot-request (<ResetRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ResetRobot-request> is deprecated: use dobot_bringup-srv:ResetRobot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetRobot-request>) ostream)
  "Serializes a message object of type '<ResetRobot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetRobot-request>) istream)
  "Deserializes a message object of type '<ResetRobot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetRobot-request>)))
  "Returns string type for a service object of type '<ResetRobot-request>"
  "dobot_bringup/ResetRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobot-request)))
  "Returns string type for a service object of type 'ResetRobot-request"
  "dobot_bringup/ResetRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetRobot-request>)))
  "Returns md5sum for a message object of type '<ResetRobot-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetRobot-request)))
  "Returns md5sum for a message object of type 'ResetRobot-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetRobot-request>)))
  "Returns full string definition for message of type '<ResetRobot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetRobot-request)))
  "Returns full string definition for message of type 'ResetRobot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetRobot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetRobot-request
))
;//! \htmlinclude ResetRobot-response.msg.html

(cl:defclass <ResetRobot-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetRobot-response (<ResetRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ResetRobot-response> is deprecated: use dobot_bringup-srv:ResetRobot-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ResetRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetRobot-response>) ostream)
  "Serializes a message object of type '<ResetRobot-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetRobot-response>) istream)
  "Deserializes a message object of type '<ResetRobot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetRobot-response>)))
  "Returns string type for a service object of type '<ResetRobot-response>"
  "dobot_bringup/ResetRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobot-response)))
  "Returns string type for a service object of type 'ResetRobot-response"
  "dobot_bringup/ResetRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetRobot-response>)))
  "Returns md5sum for a message object of type '<ResetRobot-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetRobot-response)))
  "Returns md5sum for a message object of type 'ResetRobot-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetRobot-response>)))
  "Returns full string definition for message of type '<ResetRobot-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetRobot-response)))
  "Returns full string definition for message of type 'ResetRobot-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetRobot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetRobot-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetRobot)))
  'ResetRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetRobot)))
  'ResetRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobot)))
  "Returns string type for a service object of type '<ResetRobot>"
  "dobot_bringup/ResetRobot")