; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude pause-request.msg.html

(cl:defclass <pause-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pause-request (<pause-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pause-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pause-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<pause-request> is deprecated: use dobot_bringup-srv:pause-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pause-request>) ostream)
  "Serializes a message object of type '<pause-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pause-request>) istream)
  "Deserializes a message object of type '<pause-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pause-request>)))
  "Returns string type for a service object of type '<pause-request>"
  "dobot_bringup/pauseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pause-request)))
  "Returns string type for a service object of type 'pause-request"
  "dobot_bringup/pauseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pause-request>)))
  "Returns md5sum for a message object of type '<pause-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pause-request)))
  "Returns md5sum for a message object of type 'pause-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pause-request>)))
  "Returns full string definition for message of type '<pause-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pause-request)))
  "Returns full string definition for message of type 'pause-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pause-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pause-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pause-request
))
;//! \htmlinclude pause-response.msg.html

(cl:defclass <pause-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass pause-response (<pause-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pause-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pause-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<pause-response> is deprecated: use dobot_bringup-srv:pause-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <pause-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pause-response>) ostream)
  "Serializes a message object of type '<pause-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pause-response>) istream)
  "Deserializes a message object of type '<pause-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pause-response>)))
  "Returns string type for a service object of type '<pause-response>"
  "dobot_bringup/pauseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pause-response)))
  "Returns string type for a service object of type 'pause-response"
  "dobot_bringup/pauseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pause-response>)))
  "Returns md5sum for a message object of type '<pause-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pause-response)))
  "Returns md5sum for a message object of type 'pause-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pause-response>)))
  "Returns full string definition for message of type '<pause-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pause-response)))
  "Returns full string definition for message of type 'pause-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pause-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pause-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pause-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pause)))
  'pause-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pause)))
  'pause-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pause)))
  "Returns string type for a service object of type '<pause>"
  "dobot_bringup/pause")