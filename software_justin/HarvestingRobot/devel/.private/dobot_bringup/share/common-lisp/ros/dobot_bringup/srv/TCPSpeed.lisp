; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude TCPSpeed-request.msg.html

(cl:defclass <TCPSpeed-request> (roslisp-msg-protocol:ros-message)
  ((vt
    :reader vt
    :initarg :vt
    :type cl:integer
    :initform 0))
)

(cl:defclass TCPSpeed-request (<TCPSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCPSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCPSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TCPSpeed-request> is deprecated: use dobot_bringup-srv:TCPSpeed-request instead.")))

(cl:ensure-generic-function 'vt-val :lambda-list '(m))
(cl:defmethod vt-val ((m <TCPSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:vt-val is deprecated.  Use dobot_bringup-srv:vt instead.")
  (vt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCPSpeed-request>) ostream)
  "Serializes a message object of type '<TCPSpeed-request>"
  (cl:let* ((signed (cl:slot-value msg 'vt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCPSpeed-request>) istream)
  "Deserializes a message object of type '<TCPSpeed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCPSpeed-request>)))
  "Returns string type for a service object of type '<TCPSpeed-request>"
  "dobot_bringup/TCPSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeed-request)))
  "Returns string type for a service object of type 'TCPSpeed-request"
  "dobot_bringup/TCPSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCPSpeed-request>)))
  "Returns md5sum for a message object of type '<TCPSpeed-request>"
  "a08759d5a79cc8511dea5815a6ac4c30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCPSpeed-request)))
  "Returns md5sum for a message object of type 'TCPSpeed-request"
  "a08759d5a79cc8511dea5815a6ac4c30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCPSpeed-request>)))
  "Returns full string definition for message of type '<TCPSpeed-request>"
  (cl:format cl:nil "int32 vt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCPSpeed-request)))
  "Returns full string definition for message of type 'TCPSpeed-request"
  (cl:format cl:nil "int32 vt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCPSpeed-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCPSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TCPSpeed-request
    (cl:cons ':vt (vt msg))
))
;//! \htmlinclude TCPSpeed-response.msg.html

(cl:defclass <TCPSpeed-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass TCPSpeed-response (<TCPSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCPSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCPSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TCPSpeed-response> is deprecated: use dobot_bringup-srv:TCPSpeed-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <TCPSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCPSpeed-response>) ostream)
  "Serializes a message object of type '<TCPSpeed-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCPSpeed-response>) istream)
  "Deserializes a message object of type '<TCPSpeed-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCPSpeed-response>)))
  "Returns string type for a service object of type '<TCPSpeed-response>"
  "dobot_bringup/TCPSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeed-response)))
  "Returns string type for a service object of type 'TCPSpeed-response"
  "dobot_bringup/TCPSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCPSpeed-response>)))
  "Returns md5sum for a message object of type '<TCPSpeed-response>"
  "a08759d5a79cc8511dea5815a6ac4c30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCPSpeed-response)))
  "Returns md5sum for a message object of type 'TCPSpeed-response"
  "a08759d5a79cc8511dea5815a6ac4c30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCPSpeed-response>)))
  "Returns full string definition for message of type '<TCPSpeed-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCPSpeed-response)))
  "Returns full string definition for message of type 'TCPSpeed-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCPSpeed-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCPSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TCPSpeed-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TCPSpeed)))
  'TCPSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TCPSpeed)))
  'TCPSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeed)))
  "Returns string type for a service object of type '<TCPSpeed>"
  "dobot_bringup/TCPSpeed")