; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ToolDI-request.msg.html

(cl:defclass <ToolDI-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolDI-request (<ToolDI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolDI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolDI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolDI-request> is deprecated: use dobot_bringup-srv:ToolDI-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ToolDI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolDI-request>) ostream)
  "Serializes a message object of type '<ToolDI-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolDI-request>) istream)
  "Deserializes a message object of type '<ToolDI-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolDI-request>)))
  "Returns string type for a service object of type '<ToolDI-request>"
  "dobot_bringup/ToolDIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDI-request)))
  "Returns string type for a service object of type 'ToolDI-request"
  "dobot_bringup/ToolDIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolDI-request>)))
  "Returns md5sum for a message object of type '<ToolDI-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolDI-request)))
  "Returns md5sum for a message object of type 'ToolDI-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolDI-request>)))
  "Returns full string definition for message of type '<ToolDI-request>"
  (cl:format cl:nil "int32 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolDI-request)))
  "Returns full string definition for message of type 'ToolDI-request"
  (cl:format cl:nil "int32 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolDI-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolDI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolDI-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude ToolDI-response.msg.html

(cl:defclass <ToolDI-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolDI-response (<ToolDI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolDI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolDI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolDI-response> is deprecated: use dobot_bringup-srv:ToolDI-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ToolDI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolDI-response>) ostream)
  "Serializes a message object of type '<ToolDI-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolDI-response>) istream)
  "Deserializes a message object of type '<ToolDI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolDI-response>)))
  "Returns string type for a service object of type '<ToolDI-response>"
  "dobot_bringup/ToolDIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDI-response)))
  "Returns string type for a service object of type 'ToolDI-response"
  "dobot_bringup/ToolDIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolDI-response>)))
  "Returns md5sum for a message object of type '<ToolDI-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolDI-response)))
  "Returns md5sum for a message object of type 'ToolDI-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolDI-response>)))
  "Returns full string definition for message of type '<ToolDI-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolDI-response)))
  "Returns full string definition for message of type 'ToolDI-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolDI-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolDI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolDI-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToolDI)))
  'ToolDI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToolDI)))
  'ToolDI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDI)))
  "Returns string type for a service object of type '<ToolDI>"
  "dobot_bringup/ToolDI")