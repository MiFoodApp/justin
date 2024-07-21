; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetCollisionLevel-request.msg.html

(cl:defclass <SetCollisionLevel-request> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCollisionLevel-request (<SetCollisionLevel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollisionLevel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollisionLevel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetCollisionLevel-request> is deprecated: use dobot_bringup-srv:SetCollisionLevel-request instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <SetCollisionLevel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:level-val is deprecated.  Use dobot_bringup-srv:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollisionLevel-request>) ostream)
  "Serializes a message object of type '<SetCollisionLevel-request>"
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollisionLevel-request>) istream)
  "Deserializes a message object of type '<SetCollisionLevel-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollisionLevel-request>)))
  "Returns string type for a service object of type '<SetCollisionLevel-request>"
  "dobot_bringup/SetCollisionLevelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollisionLevel-request)))
  "Returns string type for a service object of type 'SetCollisionLevel-request"
  "dobot_bringup/SetCollisionLevelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollisionLevel-request>)))
  "Returns md5sum for a message object of type '<SetCollisionLevel-request>"
  "66c784877185ea647f602bc2ad14ae86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollisionLevel-request)))
  "Returns md5sum for a message object of type 'SetCollisionLevel-request"
  "66c784877185ea647f602bc2ad14ae86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollisionLevel-request>)))
  "Returns full string definition for message of type '<SetCollisionLevel-request>"
  (cl:format cl:nil "int32 level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollisionLevel-request)))
  "Returns full string definition for message of type 'SetCollisionLevel-request"
  (cl:format cl:nil "int32 level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollisionLevel-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollisionLevel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollisionLevel-request
    (cl:cons ':level (level msg))
))
;//! \htmlinclude SetCollisionLevel-response.msg.html

(cl:defclass <SetCollisionLevel-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCollisionLevel-response (<SetCollisionLevel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollisionLevel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollisionLevel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetCollisionLevel-response> is deprecated: use dobot_bringup-srv:SetCollisionLevel-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetCollisionLevel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollisionLevel-response>) ostream)
  "Serializes a message object of type '<SetCollisionLevel-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollisionLevel-response>) istream)
  "Deserializes a message object of type '<SetCollisionLevel-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollisionLevel-response>)))
  "Returns string type for a service object of type '<SetCollisionLevel-response>"
  "dobot_bringup/SetCollisionLevelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollisionLevel-response)))
  "Returns string type for a service object of type 'SetCollisionLevel-response"
  "dobot_bringup/SetCollisionLevelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollisionLevel-response>)))
  "Returns md5sum for a message object of type '<SetCollisionLevel-response>"
  "66c784877185ea647f602bc2ad14ae86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollisionLevel-response)))
  "Returns md5sum for a message object of type 'SetCollisionLevel-response"
  "66c784877185ea647f602bc2ad14ae86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollisionLevel-response>)))
  "Returns full string definition for message of type '<SetCollisionLevel-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollisionLevel-response)))
  "Returns full string definition for message of type 'SetCollisionLevel-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollisionLevel-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollisionLevel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollisionLevel-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCollisionLevel)))
  'SetCollisionLevel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCollisionLevel)))
  'SetCollisionLevel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollisionLevel)))
  "Returns string type for a service object of type '<SetCollisionLevel>"
  "dobot_bringup/SetCollisionLevel")