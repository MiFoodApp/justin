; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SyncAll-request.msg.html

(cl:defclass <SyncAll-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SyncAll-request (<SyncAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SyncAll-request> is deprecated: use dobot_bringup-srv:SyncAll-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncAll-request>) ostream)
  "Serializes a message object of type '<SyncAll-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncAll-request>) istream)
  "Deserializes a message object of type '<SyncAll-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncAll-request>)))
  "Returns string type for a service object of type '<SyncAll-request>"
  "dobot_bringup/SyncAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncAll-request)))
  "Returns string type for a service object of type 'SyncAll-request"
  "dobot_bringup/SyncAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncAll-request>)))
  "Returns md5sum for a message object of type '<SyncAll-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncAll-request)))
  "Returns md5sum for a message object of type 'SyncAll-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncAll-request>)))
  "Returns full string definition for message of type '<SyncAll-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncAll-request)))
  "Returns full string definition for message of type 'SyncAll-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncAll-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncAll-request
))
;//! \htmlinclude SyncAll-response.msg.html

(cl:defclass <SyncAll-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncAll-response (<SyncAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SyncAll-response> is deprecated: use dobot_bringup-srv:SyncAll-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SyncAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncAll-response>) ostream)
  "Serializes a message object of type '<SyncAll-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncAll-response>) istream)
  "Deserializes a message object of type '<SyncAll-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncAll-response>)))
  "Returns string type for a service object of type '<SyncAll-response>"
  "dobot_bringup/SyncAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncAll-response)))
  "Returns string type for a service object of type 'SyncAll-response"
  "dobot_bringup/SyncAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncAll-response>)))
  "Returns md5sum for a message object of type '<SyncAll-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncAll-response)))
  "Returns md5sum for a message object of type 'SyncAll-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncAll-response>)))
  "Returns full string definition for message of type '<SyncAll-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncAll-response)))
  "Returns full string definition for message of type 'SyncAll-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncAll-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncAll-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SyncAll)))
  'SyncAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SyncAll)))
  'SyncAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncAll)))
  "Returns string type for a service object of type '<SyncAll>"
  "dobot_bringup/SyncAll")