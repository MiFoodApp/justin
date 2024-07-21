; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude AccJ-request.msg.html

(cl:defclass <AccJ-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass AccJ-request (<AccJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AccJ-request> is deprecated: use dobot_bringup-srv:AccJ-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <AccJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:r-val is deprecated.  Use dobot_bringup-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccJ-request>) ostream)
  "Serializes a message object of type '<AccJ-request>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccJ-request>) istream)
  "Deserializes a message object of type '<AccJ-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccJ-request>)))
  "Returns string type for a service object of type '<AccJ-request>"
  "dobot_bringup/AccJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccJ-request)))
  "Returns string type for a service object of type 'AccJ-request"
  "dobot_bringup/AccJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccJ-request>)))
  "Returns md5sum for a message object of type '<AccJ-request>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccJ-request)))
  "Returns md5sum for a message object of type 'AccJ-request"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccJ-request>)))
  "Returns full string definition for message of type '<AccJ-request>"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccJ-request)))
  "Returns full string definition for message of type 'AccJ-request"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccJ-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AccJ-request
    (cl:cons ':r (r msg))
))
;//! \htmlinclude AccJ-response.msg.html

(cl:defclass <AccJ-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass AccJ-response (<AccJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AccJ-response> is deprecated: use dobot_bringup-srv:AccJ-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <AccJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccJ-response>) ostream)
  "Serializes a message object of type '<AccJ-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccJ-response>) istream)
  "Deserializes a message object of type '<AccJ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccJ-response>)))
  "Returns string type for a service object of type '<AccJ-response>"
  "dobot_bringup/AccJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccJ-response)))
  "Returns string type for a service object of type 'AccJ-response"
  "dobot_bringup/AccJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccJ-response>)))
  "Returns md5sum for a message object of type '<AccJ-response>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccJ-response)))
  "Returns md5sum for a message object of type 'AccJ-response"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccJ-response>)))
  "Returns full string definition for message of type '<AccJ-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccJ-response)))
  "Returns full string definition for message of type 'AccJ-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccJ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AccJ-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AccJ)))
  'AccJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AccJ)))
  'AccJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccJ)))
  "Returns string type for a service object of type '<AccJ>"
  "dobot_bringup/AccJ")