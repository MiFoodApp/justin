; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetArmOrientation-request.msg.html

(cl:defclass <SetArmOrientation-request> (roslisp-msg-protocol:ros-message)
  ((LorR
    :reader LorR
    :initarg :LorR
    :type cl:integer
    :initform 0)
   (UorD
    :reader UorD
    :initarg :UorD
    :type cl:integer
    :initform 0)
   (ForN
    :reader ForN
    :initarg :ForN
    :type cl:integer
    :initform 0)
   (Config6
    :reader Config6
    :initarg :Config6
    :type cl:integer
    :initform 0))
)

(cl:defclass SetArmOrientation-request (<SetArmOrientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetArmOrientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetArmOrientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetArmOrientation-request> is deprecated: use dobot_bringup-srv:SetArmOrientation-request instead.")))

(cl:ensure-generic-function 'LorR-val :lambda-list '(m))
(cl:defmethod LorR-val ((m <SetArmOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:LorR-val is deprecated.  Use dobot_bringup-srv:LorR instead.")
  (LorR m))

(cl:ensure-generic-function 'UorD-val :lambda-list '(m))
(cl:defmethod UorD-val ((m <SetArmOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:UorD-val is deprecated.  Use dobot_bringup-srv:UorD instead.")
  (UorD m))

(cl:ensure-generic-function 'ForN-val :lambda-list '(m))
(cl:defmethod ForN-val ((m <SetArmOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:ForN-val is deprecated.  Use dobot_bringup-srv:ForN instead.")
  (ForN m))

(cl:ensure-generic-function 'Config6-val :lambda-list '(m))
(cl:defmethod Config6-val ((m <SetArmOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:Config6-val is deprecated.  Use dobot_bringup-srv:Config6 instead.")
  (Config6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetArmOrientation-request>) ostream)
  "Serializes a message object of type '<SetArmOrientation-request>"
  (cl:let* ((signed (cl:slot-value msg 'LorR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'UorD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ForN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Config6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetArmOrientation-request>) istream)
  "Deserializes a message object of type '<SetArmOrientation-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LorR) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'UorD) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ForN) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Config6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetArmOrientation-request>)))
  "Returns string type for a service object of type '<SetArmOrientation-request>"
  "dobot_bringup/SetArmOrientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArmOrientation-request)))
  "Returns string type for a service object of type 'SetArmOrientation-request"
  "dobot_bringup/SetArmOrientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetArmOrientation-request>)))
  "Returns md5sum for a message object of type '<SetArmOrientation-request>"
  "ef4067edc06a1e1dbf02b5e0bd3a6322")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetArmOrientation-request)))
  "Returns md5sum for a message object of type 'SetArmOrientation-request"
  "ef4067edc06a1e1dbf02b5e0bd3a6322")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetArmOrientation-request>)))
  "Returns full string definition for message of type '<SetArmOrientation-request>"
  (cl:format cl:nil "int32 LorR~%int32 UorD~%int32 ForN~%int32 Config6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetArmOrientation-request)))
  "Returns full string definition for message of type 'SetArmOrientation-request"
  (cl:format cl:nil "int32 LorR~%int32 UorD~%int32 ForN~%int32 Config6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetArmOrientation-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetArmOrientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetArmOrientation-request
    (cl:cons ':LorR (LorR msg))
    (cl:cons ':UorD (UorD msg))
    (cl:cons ':ForN (ForN msg))
    (cl:cons ':Config6 (Config6 msg))
))
;//! \htmlinclude SetArmOrientation-response.msg.html

(cl:defclass <SetArmOrientation-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetArmOrientation-response (<SetArmOrientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetArmOrientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetArmOrientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetArmOrientation-response> is deprecated: use dobot_bringup-srv:SetArmOrientation-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetArmOrientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetArmOrientation-response>) ostream)
  "Serializes a message object of type '<SetArmOrientation-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetArmOrientation-response>) istream)
  "Deserializes a message object of type '<SetArmOrientation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetArmOrientation-response>)))
  "Returns string type for a service object of type '<SetArmOrientation-response>"
  "dobot_bringup/SetArmOrientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArmOrientation-response)))
  "Returns string type for a service object of type 'SetArmOrientation-response"
  "dobot_bringup/SetArmOrientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetArmOrientation-response>)))
  "Returns md5sum for a message object of type '<SetArmOrientation-response>"
  "ef4067edc06a1e1dbf02b5e0bd3a6322")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetArmOrientation-response)))
  "Returns md5sum for a message object of type 'SetArmOrientation-response"
  "ef4067edc06a1e1dbf02b5e0bd3a6322")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetArmOrientation-response>)))
  "Returns full string definition for message of type '<SetArmOrientation-response>"
  (cl:format cl:nil "int32 res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetArmOrientation-response)))
  "Returns full string definition for message of type 'SetArmOrientation-response"
  (cl:format cl:nil "int32 res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetArmOrientation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetArmOrientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetArmOrientation-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetArmOrientation)))
  'SetArmOrientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetArmOrientation)))
  'SetArmOrientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArmOrientation)))
  "Returns string type for a service object of type '<SetArmOrientation>"
  "dobot_bringup/SetArmOrientation")