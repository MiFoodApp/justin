; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude RobotMode-request.msg.html

(cl:defclass <RobotMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotMode-request (<RobotMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RobotMode-request> is deprecated: use dobot_bringup-srv:RobotMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMode-request>) ostream)
  "Serializes a message object of type '<RobotMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMode-request>) istream)
  "Deserializes a message object of type '<RobotMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMode-request>)))
  "Returns string type for a service object of type '<RobotMode-request>"
  "dobot_bringup/RobotModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMode-request)))
  "Returns string type for a service object of type 'RobotMode-request"
  "dobot_bringup/RobotModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMode-request>)))
  "Returns md5sum for a message object of type '<RobotMode-request>"
  "6c9e8010af56fb13be385391b43d24ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMode-request)))
  "Returns md5sum for a message object of type 'RobotMode-request"
  "6c9e8010af56fb13be385391b43d24ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMode-request>)))
  "Returns full string definition for message of type '<RobotMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMode-request)))
  "Returns full string definition for message of type 'RobotMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMode-request
))
;//! \htmlinclude RobotMode-response.msg.html

(cl:defclass <RobotMode-response> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotMode-response (<RobotMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RobotMode-response> is deprecated: use dobot_bringup-srv:RobotMode-response instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:mode-val is deprecated.  Use dobot_bringup-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <RobotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMode-response>) ostream)
  "Serializes a message object of type '<RobotMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMode-response>) istream)
  "Deserializes a message object of type '<RobotMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMode-response>)))
  "Returns string type for a service object of type '<RobotMode-response>"
  "dobot_bringup/RobotModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMode-response)))
  "Returns string type for a service object of type 'RobotMode-response"
  "dobot_bringup/RobotModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMode-response>)))
  "Returns md5sum for a message object of type '<RobotMode-response>"
  "6c9e8010af56fb13be385391b43d24ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMode-response)))
  "Returns md5sum for a message object of type 'RobotMode-response"
  "6c9e8010af56fb13be385391b43d24ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMode-response>)))
  "Returns full string definition for message of type '<RobotMode-response>"
  (cl:format cl:nil "int32 mode~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMode-response)))
  "Returns full string definition for message of type 'RobotMode-response"
  (cl:format cl:nil "int32 mode~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMode-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMode-response
    (cl:cons ':mode (mode msg))
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotMode)))
  'RobotMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotMode)))
  'RobotMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMode)))
  "Returns string type for a service object of type '<RobotMode>"
  "dobot_bringup/RobotMode")