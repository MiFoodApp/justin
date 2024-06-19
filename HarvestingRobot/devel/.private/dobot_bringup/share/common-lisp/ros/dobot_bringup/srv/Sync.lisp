; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude Sync-request.msg.html

(cl:defclass <Sync-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Sync-request (<Sync-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sync-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sync-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Sync-request> is deprecated: use dobot_bringup-srv:Sync-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sync-request>) ostream)
  "Serializes a message object of type '<Sync-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sync-request>) istream)
  "Deserializes a message object of type '<Sync-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sync-request>)))
  "Returns string type for a service object of type '<Sync-request>"
  "dobot_bringup/SyncRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sync-request)))
  "Returns string type for a service object of type 'Sync-request"
  "dobot_bringup/SyncRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sync-request>)))
  "Returns md5sum for a message object of type '<Sync-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sync-request)))
  "Returns md5sum for a message object of type 'Sync-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sync-request>)))
  "Returns full string definition for message of type '<Sync-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sync-request)))
  "Returns full string definition for message of type 'Sync-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sync-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sync-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Sync-request
))
;//! \htmlinclude Sync-response.msg.html

(cl:defclass <Sync-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass Sync-response (<Sync-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sync-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sync-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Sync-response> is deprecated: use dobot_bringup-srv:Sync-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Sync-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sync-response>) ostream)
  "Serializes a message object of type '<Sync-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sync-response>) istream)
  "Deserializes a message object of type '<Sync-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sync-response>)))
  "Returns string type for a service object of type '<Sync-response>"
  "dobot_bringup/SyncResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sync-response)))
  "Returns string type for a service object of type 'Sync-response"
  "dobot_bringup/SyncResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sync-response>)))
  "Returns md5sum for a message object of type '<Sync-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sync-response)))
  "Returns md5sum for a message object of type 'Sync-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sync-response>)))
  "Returns full string definition for message of type '<Sync-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sync-response)))
  "Returns full string definition for message of type 'Sync-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sync-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sync-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Sync-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Sync)))
  'Sync-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Sync)))
  'Sync-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sync)))
  "Returns string type for a service object of type '<Sync>"
  "dobot_bringup/Sync")