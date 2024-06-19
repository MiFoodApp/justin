; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ContinueScript-request.msg.html

(cl:defclass <ContinueScript-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ContinueScript-request (<ContinueScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinueScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinueScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ContinueScript-request> is deprecated: use dobot_bringup-srv:ContinueScript-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinueScript-request>) ostream)
  "Serializes a message object of type '<ContinueScript-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinueScript-request>) istream)
  "Deserializes a message object of type '<ContinueScript-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinueScript-request>)))
  "Returns string type for a service object of type '<ContinueScript-request>"
  "dobot_bringup/ContinueScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinueScript-request)))
  "Returns string type for a service object of type 'ContinueScript-request"
  "dobot_bringup/ContinueScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinueScript-request>)))
  "Returns md5sum for a message object of type '<ContinueScript-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinueScript-request)))
  "Returns md5sum for a message object of type 'ContinueScript-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinueScript-request>)))
  "Returns full string definition for message of type '<ContinueScript-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinueScript-request)))
  "Returns full string definition for message of type 'ContinueScript-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinueScript-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinueScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinueScript-request
))
;//! \htmlinclude ContinueScript-response.msg.html

(cl:defclass <ContinueScript-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ContinueScript-response (<ContinueScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinueScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinueScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ContinueScript-response> is deprecated: use dobot_bringup-srv:ContinueScript-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ContinueScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinueScript-response>) ostream)
  "Serializes a message object of type '<ContinueScript-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinueScript-response>) istream)
  "Deserializes a message object of type '<ContinueScript-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinueScript-response>)))
  "Returns string type for a service object of type '<ContinueScript-response>"
  "dobot_bringup/ContinueScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinueScript-response)))
  "Returns string type for a service object of type 'ContinueScript-response"
  "dobot_bringup/ContinueScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinueScript-response>)))
  "Returns md5sum for a message object of type '<ContinueScript-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinueScript-response)))
  "Returns md5sum for a message object of type 'ContinueScript-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinueScript-response>)))
  "Returns full string definition for message of type '<ContinueScript-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinueScript-response)))
  "Returns full string definition for message of type 'ContinueScript-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinueScript-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinueScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinueScript-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ContinueScript)))
  'ContinueScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ContinueScript)))
  'ContinueScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinueScript)))
  "Returns string type for a service object of type '<ContinueScript>"
  "dobot_bringup/ContinueScript")