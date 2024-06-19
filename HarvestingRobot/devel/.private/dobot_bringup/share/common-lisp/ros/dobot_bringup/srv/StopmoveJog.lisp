; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StopmoveJog-request.msg.html

(cl:defclass <StopmoveJog-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopmoveJog-request (<StopmoveJog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopmoveJog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopmoveJog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopmoveJog-request> is deprecated: use dobot_bringup-srv:StopmoveJog-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopmoveJog-request>) ostream)
  "Serializes a message object of type '<StopmoveJog-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopmoveJog-request>) istream)
  "Deserializes a message object of type '<StopmoveJog-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopmoveJog-request>)))
  "Returns string type for a service object of type '<StopmoveJog-request>"
  "dobot_bringup/StopmoveJogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopmoveJog-request)))
  "Returns string type for a service object of type 'StopmoveJog-request"
  "dobot_bringup/StopmoveJogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopmoveJog-request>)))
  "Returns md5sum for a message object of type '<StopmoveJog-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopmoveJog-request)))
  "Returns md5sum for a message object of type 'StopmoveJog-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopmoveJog-request>)))
  "Returns full string definition for message of type '<StopmoveJog-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopmoveJog-request)))
  "Returns full string definition for message of type 'StopmoveJog-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopmoveJog-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopmoveJog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopmoveJog-request
))
;//! \htmlinclude StopmoveJog-response.msg.html

(cl:defclass <StopmoveJog-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StopmoveJog-response (<StopmoveJog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopmoveJog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopmoveJog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopmoveJog-response> is deprecated: use dobot_bringup-srv:StopmoveJog-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StopmoveJog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopmoveJog-response>) ostream)
  "Serializes a message object of type '<StopmoveJog-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopmoveJog-response>) istream)
  "Deserializes a message object of type '<StopmoveJog-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopmoveJog-response>)))
  "Returns string type for a service object of type '<StopmoveJog-response>"
  "dobot_bringup/StopmoveJogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopmoveJog-response)))
  "Returns string type for a service object of type 'StopmoveJog-response"
  "dobot_bringup/StopmoveJogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopmoveJog-response>)))
  "Returns md5sum for a message object of type '<StopmoveJog-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopmoveJog-response)))
  "Returns md5sum for a message object of type 'StopmoveJog-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopmoveJog-response>)))
  "Returns full string definition for message of type '<StopmoveJog-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopmoveJog-response)))
  "Returns full string definition for message of type 'StopmoveJog-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopmoveJog-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopmoveJog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopmoveJog-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopmoveJog)))
  'StopmoveJog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopmoveJog)))
  'StopmoveJog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopmoveJog)))
  "Returns string type for a service object of type '<StopmoveJog>"
  "dobot_bringup/StopmoveJog")