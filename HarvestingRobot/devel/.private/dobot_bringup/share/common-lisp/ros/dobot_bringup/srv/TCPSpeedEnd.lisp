; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude TCPSpeedEnd-request.msg.html

(cl:defclass <TCPSpeedEnd-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TCPSpeedEnd-request (<TCPSpeedEnd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCPSpeedEnd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCPSpeedEnd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TCPSpeedEnd-request> is deprecated: use dobot_bringup-srv:TCPSpeedEnd-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCPSpeedEnd-request>) ostream)
  "Serializes a message object of type '<TCPSpeedEnd-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCPSpeedEnd-request>) istream)
  "Deserializes a message object of type '<TCPSpeedEnd-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCPSpeedEnd-request>)))
  "Returns string type for a service object of type '<TCPSpeedEnd-request>"
  "dobot_bringup/TCPSpeedEndRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeedEnd-request)))
  "Returns string type for a service object of type 'TCPSpeedEnd-request"
  "dobot_bringup/TCPSpeedEndRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCPSpeedEnd-request>)))
  "Returns md5sum for a message object of type '<TCPSpeedEnd-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCPSpeedEnd-request)))
  "Returns md5sum for a message object of type 'TCPSpeedEnd-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCPSpeedEnd-request>)))
  "Returns full string definition for message of type '<TCPSpeedEnd-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCPSpeedEnd-request)))
  "Returns full string definition for message of type 'TCPSpeedEnd-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCPSpeedEnd-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCPSpeedEnd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TCPSpeedEnd-request
))
;//! \htmlinclude TCPSpeedEnd-response.msg.html

(cl:defclass <TCPSpeedEnd-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass TCPSpeedEnd-response (<TCPSpeedEnd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCPSpeedEnd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCPSpeedEnd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TCPSpeedEnd-response> is deprecated: use dobot_bringup-srv:TCPSpeedEnd-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <TCPSpeedEnd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCPSpeedEnd-response>) ostream)
  "Serializes a message object of type '<TCPSpeedEnd-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCPSpeedEnd-response>) istream)
  "Deserializes a message object of type '<TCPSpeedEnd-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCPSpeedEnd-response>)))
  "Returns string type for a service object of type '<TCPSpeedEnd-response>"
  "dobot_bringup/TCPSpeedEndResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeedEnd-response)))
  "Returns string type for a service object of type 'TCPSpeedEnd-response"
  "dobot_bringup/TCPSpeedEndResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCPSpeedEnd-response>)))
  "Returns md5sum for a message object of type '<TCPSpeedEnd-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCPSpeedEnd-response)))
  "Returns md5sum for a message object of type 'TCPSpeedEnd-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCPSpeedEnd-response>)))
  "Returns full string definition for message of type '<TCPSpeedEnd-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCPSpeedEnd-response)))
  "Returns full string definition for message of type 'TCPSpeedEnd-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCPSpeedEnd-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCPSpeedEnd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TCPSpeedEnd-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TCPSpeedEnd)))
  'TCPSpeedEnd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TCPSpeedEnd)))
  'TCPSpeedEnd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCPSpeedEnd)))
  "Returns string type for a service object of type '<TCPSpeedEnd>"
  "dobot_bringup/TCPSpeedEnd")