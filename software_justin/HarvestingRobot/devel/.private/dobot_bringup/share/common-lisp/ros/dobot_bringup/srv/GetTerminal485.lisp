; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetTerminal485-request.msg.html

(cl:defclass <GetTerminal485-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTerminal485-request (<GetTerminal485-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTerminal485-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTerminal485-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetTerminal485-request> is deprecated: use dobot_bringup-srv:GetTerminal485-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTerminal485-request>) ostream)
  "Serializes a message object of type '<GetTerminal485-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTerminal485-request>) istream)
  "Deserializes a message object of type '<GetTerminal485-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTerminal485-request>)))
  "Returns string type for a service object of type '<GetTerminal485-request>"
  "dobot_bringup/GetTerminal485Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTerminal485-request)))
  "Returns string type for a service object of type 'GetTerminal485-request"
  "dobot_bringup/GetTerminal485Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTerminal485-request>)))
  "Returns md5sum for a message object of type '<GetTerminal485-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTerminal485-request)))
  "Returns md5sum for a message object of type 'GetTerminal485-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTerminal485-request>)))
  "Returns full string definition for message of type '<GetTerminal485-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTerminal485-request)))
  "Returns full string definition for message of type 'GetTerminal485-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTerminal485-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTerminal485-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTerminal485-request
))
;//! \htmlinclude GetTerminal485-response.msg.html

(cl:defclass <GetTerminal485-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetTerminal485-response (<GetTerminal485-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTerminal485-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTerminal485-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetTerminal485-response> is deprecated: use dobot_bringup-srv:GetTerminal485-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetTerminal485-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTerminal485-response>) ostream)
  "Serializes a message object of type '<GetTerminal485-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTerminal485-response>) istream)
  "Deserializes a message object of type '<GetTerminal485-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTerminal485-response>)))
  "Returns string type for a service object of type '<GetTerminal485-response>"
  "dobot_bringup/GetTerminal485Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTerminal485-response)))
  "Returns string type for a service object of type 'GetTerminal485-response"
  "dobot_bringup/GetTerminal485Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTerminal485-response>)))
  "Returns md5sum for a message object of type '<GetTerminal485-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTerminal485-response)))
  "Returns md5sum for a message object of type 'GetTerminal485-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTerminal485-response>)))
  "Returns full string definition for message of type '<GetTerminal485-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTerminal485-response)))
  "Returns full string definition for message of type 'GetTerminal485-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTerminal485-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTerminal485-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTerminal485-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTerminal485)))
  'GetTerminal485-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTerminal485)))
  'GetTerminal485-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTerminal485)))
  "Returns string type for a service object of type '<GetTerminal485>"
  "dobot_bringup/GetTerminal485")