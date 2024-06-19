; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude PowerOn-request.msg.html

(cl:defclass <PowerOn-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PowerOn-request (<PowerOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PowerOn-request> is deprecated: use dobot_bringup-srv:PowerOn-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerOn-request>) ostream)
  "Serializes a message object of type '<PowerOn-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerOn-request>) istream)
  "Deserializes a message object of type '<PowerOn-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerOn-request>)))
  "Returns string type for a service object of type '<PowerOn-request>"
  "dobot_bringup/PowerOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOn-request)))
  "Returns string type for a service object of type 'PowerOn-request"
  "dobot_bringup/PowerOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerOn-request>)))
  "Returns md5sum for a message object of type '<PowerOn-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerOn-request)))
  "Returns md5sum for a message object of type 'PowerOn-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerOn-request>)))
  "Returns full string definition for message of type '<PowerOn-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerOn-request)))
  "Returns full string definition for message of type 'PowerOn-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerOn-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerOn-request
))
;//! \htmlinclude PowerOn-response.msg.html

(cl:defclass <PowerOn-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass PowerOn-response (<PowerOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PowerOn-response> is deprecated: use dobot_bringup-srv:PowerOn-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <PowerOn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerOn-response>) ostream)
  "Serializes a message object of type '<PowerOn-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerOn-response>) istream)
  "Deserializes a message object of type '<PowerOn-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerOn-response>)))
  "Returns string type for a service object of type '<PowerOn-response>"
  "dobot_bringup/PowerOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOn-response)))
  "Returns string type for a service object of type 'PowerOn-response"
  "dobot_bringup/PowerOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerOn-response>)))
  "Returns md5sum for a message object of type '<PowerOn-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerOn-response)))
  "Returns md5sum for a message object of type 'PowerOn-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerOn-response>)))
  "Returns full string definition for message of type '<PowerOn-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerOn-response)))
  "Returns full string definition for message of type 'PowerOn-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerOn-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerOn-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerOn)))
  'PowerOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerOn)))
  'PowerOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOn)))
  "Returns string type for a service object of type '<PowerOn>"
  "dobot_bringup/PowerOn")