; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude PauseScript-request.msg.html

(cl:defclass <PauseScript-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PauseScript-request (<PauseScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PauseScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PauseScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PauseScript-request> is deprecated: use dobot_bringup-srv:PauseScript-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PauseScript-request>) ostream)
  "Serializes a message object of type '<PauseScript-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PauseScript-request>) istream)
  "Deserializes a message object of type '<PauseScript-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PauseScript-request>)))
  "Returns string type for a service object of type '<PauseScript-request>"
  "dobot_bringup/PauseScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseScript-request)))
  "Returns string type for a service object of type 'PauseScript-request"
  "dobot_bringup/PauseScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PauseScript-request>)))
  "Returns md5sum for a message object of type '<PauseScript-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PauseScript-request)))
  "Returns md5sum for a message object of type 'PauseScript-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PauseScript-request>)))
  "Returns full string definition for message of type '<PauseScript-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PauseScript-request)))
  "Returns full string definition for message of type 'PauseScript-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PauseScript-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PauseScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PauseScript-request
))
;//! \htmlinclude PauseScript-response.msg.html

(cl:defclass <PauseScript-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass PauseScript-response (<PauseScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PauseScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PauseScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PauseScript-response> is deprecated: use dobot_bringup-srv:PauseScript-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <PauseScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PauseScript-response>) ostream)
  "Serializes a message object of type '<PauseScript-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PauseScript-response>) istream)
  "Deserializes a message object of type '<PauseScript-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PauseScript-response>)))
  "Returns string type for a service object of type '<PauseScript-response>"
  "dobot_bringup/PauseScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseScript-response)))
  "Returns string type for a service object of type 'PauseScript-response"
  "dobot_bringup/PauseScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PauseScript-response>)))
  "Returns md5sum for a message object of type '<PauseScript-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PauseScript-response)))
  "Returns md5sum for a message object of type 'PauseScript-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PauseScript-response>)))
  "Returns full string definition for message of type '<PauseScript-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PauseScript-response)))
  "Returns full string definition for message of type 'PauseScript-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PauseScript-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PauseScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PauseScript-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PauseScript)))
  'PauseScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PauseScript)))
  'PauseScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PauseScript)))
  "Returns string type for a service object of type '<PauseScript>"
  "dobot_bringup/PauseScript")