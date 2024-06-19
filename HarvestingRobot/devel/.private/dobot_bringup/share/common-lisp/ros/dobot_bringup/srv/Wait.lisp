; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude Wait-request.msg.html

(cl:defclass <Wait-request> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0))
)

(cl:defclass Wait-request (<Wait-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wait-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wait-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Wait-request> is deprecated: use dobot_bringup-srv:Wait-request instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Wait-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:time-val is deprecated.  Use dobot_bringup-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wait-request>) ostream)
  "Serializes a message object of type '<Wait-request>"
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wait-request>) istream)
  "Deserializes a message object of type '<Wait-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wait-request>)))
  "Returns string type for a service object of type '<Wait-request>"
  "dobot_bringup/WaitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wait-request)))
  "Returns string type for a service object of type 'Wait-request"
  "dobot_bringup/WaitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wait-request>)))
  "Returns md5sum for a message object of type '<Wait-request>"
  "ffdd33da4722c26f9e1ea1ac05b9a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wait-request)))
  "Returns md5sum for a message object of type 'Wait-request"
  "ffdd33da4722c26f9e1ea1ac05b9a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wait-request>)))
  "Returns full string definition for message of type '<Wait-request>"
  (cl:format cl:nil "int32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wait-request)))
  "Returns full string definition for message of type 'Wait-request"
  (cl:format cl:nil "int32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wait-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wait-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Wait-request
    (cl:cons ':time (time msg))
))
;//! \htmlinclude Wait-response.msg.html

(cl:defclass <Wait-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass Wait-response (<Wait-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wait-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wait-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Wait-response> is deprecated: use dobot_bringup-srv:Wait-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Wait-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wait-response>) ostream)
  "Serializes a message object of type '<Wait-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wait-response>) istream)
  "Deserializes a message object of type '<Wait-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wait-response>)))
  "Returns string type for a service object of type '<Wait-response>"
  "dobot_bringup/WaitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wait-response)))
  "Returns string type for a service object of type 'Wait-response"
  "dobot_bringup/WaitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wait-response>)))
  "Returns md5sum for a message object of type '<Wait-response>"
  "ffdd33da4722c26f9e1ea1ac05b9a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wait-response)))
  "Returns md5sum for a message object of type 'Wait-response"
  "ffdd33da4722c26f9e1ea1ac05b9a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wait-response>)))
  "Returns full string definition for message of type '<Wait-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wait-response)))
  "Returns full string definition for message of type 'Wait-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wait-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wait-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Wait-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Wait)))
  'Wait-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Wait)))
  'Wait-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wait)))
  "Returns string type for a service object of type '<Wait>"
  "dobot_bringup/Wait")