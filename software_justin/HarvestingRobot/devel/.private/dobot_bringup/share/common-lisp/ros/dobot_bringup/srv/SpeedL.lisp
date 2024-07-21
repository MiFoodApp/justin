; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SpeedL-request.msg.html

(cl:defclass <SpeedL-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedL-request (<SpeedL-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedL-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedL-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedL-request> is deprecated: use dobot_bringup-srv:SpeedL-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <SpeedL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:r-val is deprecated.  Use dobot_bringup-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedL-request>) ostream)
  "Serializes a message object of type '<SpeedL-request>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedL-request>) istream)
  "Deserializes a message object of type '<SpeedL-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedL-request>)))
  "Returns string type for a service object of type '<SpeedL-request>"
  "dobot_bringup/SpeedLRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedL-request)))
  "Returns string type for a service object of type 'SpeedL-request"
  "dobot_bringup/SpeedLRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedL-request>)))
  "Returns md5sum for a message object of type '<SpeedL-request>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedL-request)))
  "Returns md5sum for a message object of type 'SpeedL-request"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedL-request>)))
  "Returns full string definition for message of type '<SpeedL-request>"
  (cl:format cl:nil "int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedL-request)))
  "Returns full string definition for message of type 'SpeedL-request"
  (cl:format cl:nil "int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedL-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedL-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedL-request
    (cl:cons ':r (r msg))
))
;//! \htmlinclude SpeedL-response.msg.html

(cl:defclass <SpeedL-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedL-response (<SpeedL-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedL-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedL-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedL-response> is deprecated: use dobot_bringup-srv:SpeedL-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SpeedL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedL-response>) ostream)
  "Serializes a message object of type '<SpeedL-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedL-response>) istream)
  "Deserializes a message object of type '<SpeedL-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedL-response>)))
  "Returns string type for a service object of type '<SpeedL-response>"
  "dobot_bringup/SpeedLResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedL-response)))
  "Returns string type for a service object of type 'SpeedL-response"
  "dobot_bringup/SpeedLResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedL-response>)))
  "Returns md5sum for a message object of type '<SpeedL-response>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedL-response)))
  "Returns md5sum for a message object of type 'SpeedL-response"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedL-response>)))
  "Returns full string definition for message of type '<SpeedL-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedL-response)))
  "Returns full string definition for message of type 'SpeedL-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedL-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedL-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedL-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeedL)))
  'SpeedL-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeedL)))
  'SpeedL-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedL)))
  "Returns string type for a service object of type '<SpeedL>"
  "dobot_bringup/SpeedL")