; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude AccL-request.msg.html

(cl:defclass <AccL-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass AccL-request (<AccL-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccL-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccL-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AccL-request> is deprecated: use dobot_bringup-srv:AccL-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <AccL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:r-val is deprecated.  Use dobot_bringup-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccL-request>) ostream)
  "Serializes a message object of type '<AccL-request>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccL-request>) istream)
  "Deserializes a message object of type '<AccL-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccL-request>)))
  "Returns string type for a service object of type '<AccL-request>"
  "dobot_bringup/AccLRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccL-request)))
  "Returns string type for a service object of type 'AccL-request"
  "dobot_bringup/AccLRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccL-request>)))
  "Returns md5sum for a message object of type '<AccL-request>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccL-request)))
  "Returns md5sum for a message object of type 'AccL-request"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccL-request>)))
  "Returns full string definition for message of type '<AccL-request>"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccL-request)))
  "Returns full string definition for message of type 'AccL-request"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccL-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccL-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AccL-request
    (cl:cons ':r (r msg))
))
;//! \htmlinclude AccL-response.msg.html

(cl:defclass <AccL-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass AccL-response (<AccL-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccL-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccL-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AccL-response> is deprecated: use dobot_bringup-srv:AccL-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <AccL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccL-response>) ostream)
  "Serializes a message object of type '<AccL-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccL-response>) istream)
  "Deserializes a message object of type '<AccL-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccL-response>)))
  "Returns string type for a service object of type '<AccL-response>"
  "dobot_bringup/AccLResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccL-response)))
  "Returns string type for a service object of type 'AccL-response"
  "dobot_bringup/AccLResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccL-response>)))
  "Returns md5sum for a message object of type '<AccL-response>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccL-response)))
  "Returns md5sum for a message object of type 'AccL-response"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccL-response>)))
  "Returns full string definition for message of type '<AccL-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccL-response)))
  "Returns full string definition for message of type 'AccL-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccL-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccL-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AccL-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AccL)))
  'AccL-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AccL)))
  'AccL-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccL)))
  "Returns string type for a service object of type '<AccL>"
  "dobot_bringup/AccL")