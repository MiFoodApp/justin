; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetTerminalKeys-request.msg.html

(cl:defclass <SetTerminalKeys-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SetTerminalKeys-request (<SetTerminalKeys-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTerminalKeys-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTerminalKeys-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetTerminalKeys-request> is deprecated: use dobot_bringup-srv:SetTerminalKeys-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetTerminalKeys-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTerminalKeys-request>) ostream)
  "Serializes a message object of type '<SetTerminalKeys-request>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTerminalKeys-request>) istream)
  "Deserializes a message object of type '<SetTerminalKeys-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTerminalKeys-request>)))
  "Returns string type for a service object of type '<SetTerminalKeys-request>"
  "dobot_bringup/SetTerminalKeysRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminalKeys-request)))
  "Returns string type for a service object of type 'SetTerminalKeys-request"
  "dobot_bringup/SetTerminalKeysRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTerminalKeys-request>)))
  "Returns md5sum for a message object of type '<SetTerminalKeys-request>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTerminalKeys-request)))
  "Returns md5sum for a message object of type 'SetTerminalKeys-request"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTerminalKeys-request>)))
  "Returns full string definition for message of type '<SetTerminalKeys-request>"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTerminalKeys-request)))
  "Returns full string definition for message of type 'SetTerminalKeys-request"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTerminalKeys-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTerminalKeys-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTerminalKeys-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude SetTerminalKeys-response.msg.html

(cl:defclass <SetTerminalKeys-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetTerminalKeys-response (<SetTerminalKeys-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTerminalKeys-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTerminalKeys-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetTerminalKeys-response> is deprecated: use dobot_bringup-srv:SetTerminalKeys-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetTerminalKeys-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTerminalKeys-response>) ostream)
  "Serializes a message object of type '<SetTerminalKeys-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTerminalKeys-response>) istream)
  "Deserializes a message object of type '<SetTerminalKeys-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTerminalKeys-response>)))
  "Returns string type for a service object of type '<SetTerminalKeys-response>"
  "dobot_bringup/SetTerminalKeysResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminalKeys-response)))
  "Returns string type for a service object of type 'SetTerminalKeys-response"
  "dobot_bringup/SetTerminalKeysResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTerminalKeys-response>)))
  "Returns md5sum for a message object of type '<SetTerminalKeys-response>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTerminalKeys-response)))
  "Returns md5sum for a message object of type 'SetTerminalKeys-response"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTerminalKeys-response>)))
  "Returns full string definition for message of type '<SetTerminalKeys-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTerminalKeys-response)))
  "Returns full string definition for message of type 'SetTerminalKeys-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTerminalKeys-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTerminalKeys-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTerminalKeys-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTerminalKeys)))
  'SetTerminalKeys-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTerminalKeys)))
  'SetTerminalKeys-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminalKeys)))
  "Returns string type for a service object of type '<SetTerminalKeys>"
  "dobot_bringup/SetTerminalKeys")