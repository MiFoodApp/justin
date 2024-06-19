; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ToolAI-request.msg.html

(cl:defclass <ToolAI-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolAI-request (<ToolAI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolAI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolAI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolAI-request> is deprecated: use dobot_bringup-srv:ToolAI-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ToolAI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolAI-request>) ostream)
  "Serializes a message object of type '<ToolAI-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolAI-request>) istream)
  "Deserializes a message object of type '<ToolAI-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolAI-request>)))
  "Returns string type for a service object of type '<ToolAI-request>"
  "dobot_bringup/ToolAIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolAI-request)))
  "Returns string type for a service object of type 'ToolAI-request"
  "dobot_bringup/ToolAIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolAI-request>)))
  "Returns md5sum for a message object of type '<ToolAI-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolAI-request)))
  "Returns md5sum for a message object of type 'ToolAI-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolAI-request>)))
  "Returns full string definition for message of type '<ToolAI-request>"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolAI-request)))
  "Returns full string definition for message of type 'ToolAI-request"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolAI-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolAI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolAI-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude ToolAI-response.msg.html

(cl:defclass <ToolAI-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolAI-response (<ToolAI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolAI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolAI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolAI-response> is deprecated: use dobot_bringup-srv:ToolAI-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ToolAI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolAI-response>) ostream)
  "Serializes a message object of type '<ToolAI-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolAI-response>) istream)
  "Deserializes a message object of type '<ToolAI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolAI-response>)))
  "Returns string type for a service object of type '<ToolAI-response>"
  "dobot_bringup/ToolAIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolAI-response)))
  "Returns string type for a service object of type 'ToolAI-response"
  "dobot_bringup/ToolAIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolAI-response>)))
  "Returns md5sum for a message object of type '<ToolAI-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolAI-response)))
  "Returns md5sum for a message object of type 'ToolAI-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolAI-response>)))
  "Returns full string definition for message of type '<ToolAI-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolAI-response)))
  "Returns full string definition for message of type 'ToolAI-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolAI-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolAI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolAI-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToolAI)))
  'ToolAI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToolAI)))
  'ToolAI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolAI)))
  "Returns string type for a service object of type '<ToolAI>"
  "dobot_bringup/ToolAI")