; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude LimZ-request.msg.html

(cl:defclass <LimZ-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass LimZ-request (<LimZ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LimZ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LimZ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<LimZ-request> is deprecated: use dobot_bringup-srv:LimZ-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LimZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:value-val is deprecated.  Use dobot_bringup-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LimZ-request>) ostream)
  "Serializes a message object of type '<LimZ-request>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LimZ-request>) istream)
  "Deserializes a message object of type '<LimZ-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LimZ-request>)))
  "Returns string type for a service object of type '<LimZ-request>"
  "dobot_bringup/LimZRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LimZ-request)))
  "Returns string type for a service object of type 'LimZ-request"
  "dobot_bringup/LimZRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LimZ-request>)))
  "Returns md5sum for a message object of type '<LimZ-request>"
  "e2f95961203d3c57387d7d792b34055f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LimZ-request)))
  "Returns md5sum for a message object of type 'LimZ-request"
  "e2f95961203d3c57387d7d792b34055f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LimZ-request>)))
  "Returns full string definition for message of type '<LimZ-request>"
  (cl:format cl:nil "~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LimZ-request)))
  "Returns full string definition for message of type 'LimZ-request"
  (cl:format cl:nil "~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LimZ-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LimZ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LimZ-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude LimZ-response.msg.html

(cl:defclass <LimZ-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass LimZ-response (<LimZ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LimZ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LimZ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<LimZ-response> is deprecated: use dobot_bringup-srv:LimZ-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <LimZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LimZ-response>) ostream)
  "Serializes a message object of type '<LimZ-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LimZ-response>) istream)
  "Deserializes a message object of type '<LimZ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LimZ-response>)))
  "Returns string type for a service object of type '<LimZ-response>"
  "dobot_bringup/LimZResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LimZ-response)))
  "Returns string type for a service object of type 'LimZ-response"
  "dobot_bringup/LimZResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LimZ-response>)))
  "Returns md5sum for a message object of type '<LimZ-response>"
  "e2f95961203d3c57387d7d792b34055f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LimZ-response)))
  "Returns md5sum for a message object of type 'LimZ-response"
  "e2f95961203d3c57387d7d792b34055f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LimZ-response>)))
  "Returns full string definition for message of type '<LimZ-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LimZ-response)))
  "Returns full string definition for message of type 'LimZ-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LimZ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LimZ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LimZ-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LimZ)))
  'LimZ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LimZ)))
  'LimZ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LimZ)))
  "Returns string type for a service object of type '<LimZ>"
  "dobot_bringup/LimZ")