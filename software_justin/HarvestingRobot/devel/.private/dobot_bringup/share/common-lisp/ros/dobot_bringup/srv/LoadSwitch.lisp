; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude LoadSwitch-request.msg.html

(cl:defclass <LoadSwitch-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass LoadSwitch-request (<LoadSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<LoadSwitch-request> is deprecated: use dobot_bringup-srv:LoadSwitch-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LoadSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadSwitch-request>) ostream)
  "Serializes a message object of type '<LoadSwitch-request>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadSwitch-request>) istream)
  "Deserializes a message object of type '<LoadSwitch-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadSwitch-request>)))
  "Returns string type for a service object of type '<LoadSwitch-request>"
  "dobot_bringup/LoadSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSwitch-request)))
  "Returns string type for a service object of type 'LoadSwitch-request"
  "dobot_bringup/LoadSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadSwitch-request>)))
  "Returns md5sum for a message object of type '<LoadSwitch-request>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadSwitch-request)))
  "Returns md5sum for a message object of type 'LoadSwitch-request"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadSwitch-request>)))
  "Returns full string definition for message of type '<LoadSwitch-request>"
  (cl:format cl:nil "int32 status ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadSwitch-request)))
  "Returns full string definition for message of type 'LoadSwitch-request"
  (cl:format cl:nil "int32 status ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadSwitch-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadSwitch-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude LoadSwitch-response.msg.html

(cl:defclass <LoadSwitch-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass LoadSwitch-response (<LoadSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<LoadSwitch-response> is deprecated: use dobot_bringup-srv:LoadSwitch-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <LoadSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadSwitch-response>) ostream)
  "Serializes a message object of type '<LoadSwitch-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadSwitch-response>) istream)
  "Deserializes a message object of type '<LoadSwitch-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadSwitch-response>)))
  "Returns string type for a service object of type '<LoadSwitch-response>"
  "dobot_bringup/LoadSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSwitch-response)))
  "Returns string type for a service object of type 'LoadSwitch-response"
  "dobot_bringup/LoadSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadSwitch-response>)))
  "Returns md5sum for a message object of type '<LoadSwitch-response>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadSwitch-response)))
  "Returns md5sum for a message object of type 'LoadSwitch-response"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadSwitch-response>)))
  "Returns full string definition for message of type '<LoadSwitch-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadSwitch-response)))
  "Returns full string definition for message of type 'LoadSwitch-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadSwitch-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadSwitch-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadSwitch)))
  'LoadSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadSwitch)))
  'LoadSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadSwitch)))
  "Returns string type for a service object of type '<LoadSwitch>"
  "dobot_bringup/LoadSwitch")