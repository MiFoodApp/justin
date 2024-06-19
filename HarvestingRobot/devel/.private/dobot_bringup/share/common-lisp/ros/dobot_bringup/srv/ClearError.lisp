; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ClearError-request.msg.html

(cl:defclass <ClearError-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearError-request (<ClearError-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearError-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearError-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ClearError-request> is deprecated: use dobot_bringup-srv:ClearError-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearError-request>) ostream)
  "Serializes a message object of type '<ClearError-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearError-request>) istream)
  "Deserializes a message object of type '<ClearError-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearError-request>)))
  "Returns string type for a service object of type '<ClearError-request>"
  "dobot_bringup/ClearErrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError-request)))
  "Returns string type for a service object of type 'ClearError-request"
  "dobot_bringup/ClearErrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearError-request>)))
  "Returns md5sum for a message object of type '<ClearError-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearError-request)))
  "Returns md5sum for a message object of type 'ClearError-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearError-request>)))
  "Returns full string definition for message of type '<ClearError-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearError-request)))
  "Returns full string definition for message of type 'ClearError-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearError-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearError-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearError-request
))
;//! \htmlinclude ClearError-response.msg.html

(cl:defclass <ClearError-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ClearError-response (<ClearError-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearError-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearError-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ClearError-response> is deprecated: use dobot_bringup-srv:ClearError-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ClearError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearError-response>) ostream)
  "Serializes a message object of type '<ClearError-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearError-response>) istream)
  "Deserializes a message object of type '<ClearError-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearError-response>)))
  "Returns string type for a service object of type '<ClearError-response>"
  "dobot_bringup/ClearErrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError-response)))
  "Returns string type for a service object of type 'ClearError-response"
  "dobot_bringup/ClearErrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearError-response>)))
  "Returns md5sum for a message object of type '<ClearError-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearError-response)))
  "Returns md5sum for a message object of type 'ClearError-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearError-response>)))
  "Returns full string definition for message of type '<ClearError-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearError-response)))
  "Returns full string definition for message of type 'ClearError-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearError-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearError-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearError-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearError)))
  'ClearError-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearError)))
  'ClearError-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError)))
  "Returns string type for a service object of type '<ClearError>"
  "dobot_bringup/ClearError")