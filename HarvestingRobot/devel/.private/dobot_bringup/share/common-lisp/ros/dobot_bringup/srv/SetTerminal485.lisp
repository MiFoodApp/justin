; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetTerminal485-request.msg.html

(cl:defclass <SetTerminal485-request> (roslisp-msg-protocol:ros-message)
  ((baudRate
    :reader baudRate
    :initarg :baudRate
    :type cl:integer
    :initform 0)
   (dataLen
    :reader dataLen
    :initarg :dataLen
    :type cl:integer
    :initform 0)
   (parityBit
    :reader parityBit
    :initarg :parityBit
    :type cl:string
    :initform "")
   (stopBit
    :reader stopBit
    :initarg :stopBit
    :type cl:integer
    :initform 0))
)

(cl:defclass SetTerminal485-request (<SetTerminal485-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTerminal485-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTerminal485-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetTerminal485-request> is deprecated: use dobot_bringup-srv:SetTerminal485-request instead.")))

(cl:ensure-generic-function 'baudRate-val :lambda-list '(m))
(cl:defmethod baudRate-val ((m <SetTerminal485-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:baudRate-val is deprecated.  Use dobot_bringup-srv:baudRate instead.")
  (baudRate m))

(cl:ensure-generic-function 'dataLen-val :lambda-list '(m))
(cl:defmethod dataLen-val ((m <SetTerminal485-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:dataLen-val is deprecated.  Use dobot_bringup-srv:dataLen instead.")
  (dataLen m))

(cl:ensure-generic-function 'parityBit-val :lambda-list '(m))
(cl:defmethod parityBit-val ((m <SetTerminal485-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:parityBit-val is deprecated.  Use dobot_bringup-srv:parityBit instead.")
  (parityBit m))

(cl:ensure-generic-function 'stopBit-val :lambda-list '(m))
(cl:defmethod stopBit-val ((m <SetTerminal485-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:stopBit-val is deprecated.  Use dobot_bringup-srv:stopBit instead.")
  (stopBit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTerminal485-request>) ostream)
  "Serializes a message object of type '<SetTerminal485-request>"
  (cl:let* ((signed (cl:slot-value msg 'baudRate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dataLen)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parityBit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parityBit))
  (cl:let* ((signed (cl:slot-value msg 'stopBit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTerminal485-request>) istream)
  "Deserializes a message object of type '<SetTerminal485-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baudRate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataLen) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parityBit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parityBit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stopBit) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTerminal485-request>)))
  "Returns string type for a service object of type '<SetTerminal485-request>"
  "dobot_bringup/SetTerminal485Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminal485-request)))
  "Returns string type for a service object of type 'SetTerminal485-request"
  "dobot_bringup/SetTerminal485Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTerminal485-request>)))
  "Returns md5sum for a message object of type '<SetTerminal485-request>"
  "69a7692f366328cd10e3101ae3b97e60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTerminal485-request)))
  "Returns md5sum for a message object of type 'SetTerminal485-request"
  "69a7692f366328cd10e3101ae3b97e60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTerminal485-request>)))
  "Returns full string definition for message of type '<SetTerminal485-request>"
  (cl:format cl:nil "int32 baudRate~%int32 dataLen~%string parityBit~%int32 stopBit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTerminal485-request)))
  "Returns full string definition for message of type 'SetTerminal485-request"
  (cl:format cl:nil "int32 baudRate~%int32 dataLen~%string parityBit~%int32 stopBit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTerminal485-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'parityBit))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTerminal485-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTerminal485-request
    (cl:cons ':baudRate (baudRate msg))
    (cl:cons ':dataLen (dataLen msg))
    (cl:cons ':parityBit (parityBit msg))
    (cl:cons ':stopBit (stopBit msg))
))
;//! \htmlinclude SetTerminal485-response.msg.html

(cl:defclass <SetTerminal485-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetTerminal485-response (<SetTerminal485-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTerminal485-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTerminal485-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetTerminal485-response> is deprecated: use dobot_bringup-srv:SetTerminal485-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetTerminal485-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTerminal485-response>) ostream)
  "Serializes a message object of type '<SetTerminal485-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTerminal485-response>) istream)
  "Deserializes a message object of type '<SetTerminal485-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTerminal485-response>)))
  "Returns string type for a service object of type '<SetTerminal485-response>"
  "dobot_bringup/SetTerminal485Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminal485-response)))
  "Returns string type for a service object of type 'SetTerminal485-response"
  "dobot_bringup/SetTerminal485Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTerminal485-response>)))
  "Returns md5sum for a message object of type '<SetTerminal485-response>"
  "69a7692f366328cd10e3101ae3b97e60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTerminal485-response)))
  "Returns md5sum for a message object of type 'SetTerminal485-response"
  "69a7692f366328cd10e3101ae3b97e60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTerminal485-response>)))
  "Returns full string definition for message of type '<SetTerminal485-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTerminal485-response)))
  "Returns full string definition for message of type 'SetTerminal485-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTerminal485-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTerminal485-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTerminal485-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTerminal485)))
  'SetTerminal485-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTerminal485)))
  'SetTerminal485-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTerminal485)))
  "Returns string type for a service object of type '<SetTerminal485>"
  "dobot_bringup/SetTerminal485")