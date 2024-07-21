; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude EmergencyStop-request.msg.html

(cl:defclass <EmergencyStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmergencyStop-request (<EmergencyStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<EmergencyStop-request> is deprecated: use dobot_bringup-srv:EmergencyStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-request>) ostream)
  "Serializes a message object of type '<EmergencyStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-request>) istream)
  "Deserializes a message object of type '<EmergencyStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-request>)))
  "Returns string type for a service object of type '<EmergencyStop-request>"
  "dobot_bringup/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-request)))
  "Returns string type for a service object of type 'EmergencyStop-request"
  "dobot_bringup/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-request>)))
  "Returns md5sum for a message object of type '<EmergencyStop-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-request)))
  "Returns md5sum for a message object of type 'EmergencyStop-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-request>)))
  "Returns full string definition for message of type '<EmergencyStop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-request)))
  "Returns full string definition for message of type 'EmergencyStop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-request
))
;//! \htmlinclude EmergencyStop-response.msg.html

(cl:defclass <EmergencyStop-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass EmergencyStop-response (<EmergencyStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<EmergencyStop-response> is deprecated: use dobot_bringup-srv:EmergencyStop-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <EmergencyStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-response>) ostream)
  "Serializes a message object of type '<EmergencyStop-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-response>) istream)
  "Deserializes a message object of type '<EmergencyStop-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-response>)))
  "Returns string type for a service object of type '<EmergencyStop-response>"
  "dobot_bringup/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-response)))
  "Returns string type for a service object of type 'EmergencyStop-response"
  "dobot_bringup/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-response>)))
  "Returns md5sum for a message object of type '<EmergencyStop-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-response)))
  "Returns md5sum for a message object of type 'EmergencyStop-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-response>)))
  "Returns full string definition for message of type '<EmergencyStop-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-response)))
  "Returns full string definition for message of type 'EmergencyStop-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop)))
  "Returns string type for a service object of type '<EmergencyStop>"
  "dobot_bringup/EmergencyStop")