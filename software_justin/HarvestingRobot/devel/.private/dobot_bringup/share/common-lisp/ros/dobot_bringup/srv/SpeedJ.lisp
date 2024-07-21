; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SpeedJ-request.msg.html

(cl:defclass <SpeedJ-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedJ-request (<SpeedJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedJ-request> is deprecated: use dobot_bringup-srv:SpeedJ-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <SpeedJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:r-val is deprecated.  Use dobot_bringup-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedJ-request>) ostream)
  "Serializes a message object of type '<SpeedJ-request>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedJ-request>) istream)
  "Deserializes a message object of type '<SpeedJ-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedJ-request>)))
  "Returns string type for a service object of type '<SpeedJ-request>"
  "dobot_bringup/SpeedJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedJ-request)))
  "Returns string type for a service object of type 'SpeedJ-request"
  "dobot_bringup/SpeedJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedJ-request>)))
  "Returns md5sum for a message object of type '<SpeedJ-request>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedJ-request)))
  "Returns md5sum for a message object of type 'SpeedJ-request"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedJ-request>)))
  "Returns full string definition for message of type '<SpeedJ-request>"
  (cl:format cl:nil "int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedJ-request)))
  "Returns full string definition for message of type 'SpeedJ-request"
  (cl:format cl:nil "int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedJ-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedJ-request
    (cl:cons ':r (r msg))
))
;//! \htmlinclude SpeedJ-response.msg.html

(cl:defclass <SpeedJ-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedJ-response (<SpeedJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedJ-response> is deprecated: use dobot_bringup-srv:SpeedJ-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SpeedJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedJ-response>) ostream)
  "Serializes a message object of type '<SpeedJ-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedJ-response>) istream)
  "Deserializes a message object of type '<SpeedJ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedJ-response>)))
  "Returns string type for a service object of type '<SpeedJ-response>"
  "dobot_bringup/SpeedJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedJ-response)))
  "Returns string type for a service object of type 'SpeedJ-response"
  "dobot_bringup/SpeedJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedJ-response>)))
  "Returns md5sum for a message object of type '<SpeedJ-response>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedJ-response)))
  "Returns md5sum for a message object of type 'SpeedJ-response"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedJ-response>)))
  "Returns full string definition for message of type '<SpeedJ-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedJ-response)))
  "Returns full string definition for message of type 'SpeedJ-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedJ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedJ-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeedJ)))
  'SpeedJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeedJ)))
  'SpeedJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedJ)))
  "Returns string type for a service object of type '<SpeedJ>"
  "dobot_bringup/SpeedJ")