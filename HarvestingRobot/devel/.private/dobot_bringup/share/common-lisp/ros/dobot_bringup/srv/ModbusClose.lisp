; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ModbusClose-request.msg.html

(cl:defclass <ModbusClose-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass ModbusClose-request (<ModbusClose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModbusClose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModbusClose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ModbusClose-request> is deprecated: use dobot_bringup-srv:ModbusClose-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ModbusClose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModbusClose-request>) ostream)
  "Serializes a message object of type '<ModbusClose-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModbusClose-request>) istream)
  "Deserializes a message object of type '<ModbusClose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModbusClose-request>)))
  "Returns string type for a service object of type '<ModbusClose-request>"
  "dobot_bringup/ModbusCloseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModbusClose-request)))
  "Returns string type for a service object of type 'ModbusClose-request"
  "dobot_bringup/ModbusCloseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModbusClose-request>)))
  "Returns md5sum for a message object of type '<ModbusClose-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModbusClose-request)))
  "Returns md5sum for a message object of type 'ModbusClose-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModbusClose-request>)))
  "Returns full string definition for message of type '<ModbusClose-request>"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModbusClose-request)))
  "Returns full string definition for message of type 'ModbusClose-request"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModbusClose-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModbusClose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModbusClose-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude ModbusClose-response.msg.html

(cl:defclass <ModbusClose-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ModbusClose-response (<ModbusClose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModbusClose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModbusClose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ModbusClose-response> is deprecated: use dobot_bringup-srv:ModbusClose-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ModbusClose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModbusClose-response>) ostream)
  "Serializes a message object of type '<ModbusClose-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModbusClose-response>) istream)
  "Deserializes a message object of type '<ModbusClose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModbusClose-response>)))
  "Returns string type for a service object of type '<ModbusClose-response>"
  "dobot_bringup/ModbusCloseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModbusClose-response)))
  "Returns string type for a service object of type 'ModbusClose-response"
  "dobot_bringup/ModbusCloseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModbusClose-response>)))
  "Returns md5sum for a message object of type '<ModbusClose-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModbusClose-response)))
  "Returns md5sum for a message object of type 'ModbusClose-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModbusClose-response>)))
  "Returns full string definition for message of type '<ModbusClose-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModbusClose-response)))
  "Returns full string definition for message of type 'ModbusClose-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModbusClose-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModbusClose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModbusClose-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModbusClose)))
  'ModbusClose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModbusClose)))
  'ModbusClose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModbusClose)))
  "Returns string type for a service object of type '<ModbusClose>"
  "dobot_bringup/ModbusClose")