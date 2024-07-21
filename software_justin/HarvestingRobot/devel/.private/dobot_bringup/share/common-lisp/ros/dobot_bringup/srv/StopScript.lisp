; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StopScript-request.msg.html

(cl:defclass <StopScript-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopScript-request (<StopScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopScript-request> is deprecated: use dobot_bringup-srv:StopScript-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopScript-request>) ostream)
  "Serializes a message object of type '<StopScript-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopScript-request>) istream)
  "Deserializes a message object of type '<StopScript-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopScript-request>)))
  "Returns string type for a service object of type '<StopScript-request>"
  "dobot_bringup/StopScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopScript-request)))
  "Returns string type for a service object of type 'StopScript-request"
  "dobot_bringup/StopScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopScript-request>)))
  "Returns md5sum for a message object of type '<StopScript-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopScript-request)))
  "Returns md5sum for a message object of type 'StopScript-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopScript-request>)))
  "Returns full string definition for message of type '<StopScript-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopScript-request)))
  "Returns full string definition for message of type 'StopScript-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopScript-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopScript-request
))
;//! \htmlinclude StopScript-response.msg.html

(cl:defclass <StopScript-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StopScript-response (<StopScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopScript-response> is deprecated: use dobot_bringup-srv:StopScript-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StopScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopScript-response>) ostream)
  "Serializes a message object of type '<StopScript-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopScript-response>) istream)
  "Deserializes a message object of type '<StopScript-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopScript-response>)))
  "Returns string type for a service object of type '<StopScript-response>"
  "dobot_bringup/StopScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopScript-response)))
  "Returns string type for a service object of type 'StopScript-response"
  "dobot_bringup/StopScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopScript-response>)))
  "Returns md5sum for a message object of type '<StopScript-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopScript-response)))
  "Returns md5sum for a message object of type 'StopScript-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopScript-response>)))
  "Returns full string definition for message of type '<StopScript-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopScript-response)))
  "Returns full string definition for message of type 'StopScript-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopScript-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopScript-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopScript)))
  'StopScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopScript)))
  'StopScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopScript)))
  "Returns string type for a service object of type '<StopScript>"
  "dobot_bringup/StopScript")