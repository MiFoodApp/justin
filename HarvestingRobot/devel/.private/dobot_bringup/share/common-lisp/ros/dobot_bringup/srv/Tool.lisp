; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude Tool-request.msg.html

(cl:defclass <Tool-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass Tool-request (<Tool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Tool-request> is deprecated: use dobot_bringup-srv:Tool-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Tool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tool-request>) ostream)
  "Serializes a message object of type '<Tool-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tool-request>) istream)
  "Deserializes a message object of type '<Tool-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tool-request>)))
  "Returns string type for a service object of type '<Tool-request>"
  "dobot_bringup/ToolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool-request)))
  "Returns string type for a service object of type 'Tool-request"
  "dobot_bringup/ToolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tool-request>)))
  "Returns md5sum for a message object of type '<Tool-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tool-request)))
  "Returns md5sum for a message object of type 'Tool-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tool-request>)))
  "Returns full string definition for message of type '<Tool-request>"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tool-request)))
  "Returns full string definition for message of type 'Tool-request"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tool-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Tool-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude Tool-response.msg.html

(cl:defclass <Tool-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass Tool-response (<Tool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Tool-response> is deprecated: use dobot_bringup-srv:Tool-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Tool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tool-response>) ostream)
  "Serializes a message object of type '<Tool-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tool-response>) istream)
  "Deserializes a message object of type '<Tool-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tool-response>)))
  "Returns string type for a service object of type '<Tool-response>"
  "dobot_bringup/ToolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool-response)))
  "Returns string type for a service object of type 'Tool-response"
  "dobot_bringup/ToolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tool-response>)))
  "Returns md5sum for a message object of type '<Tool-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tool-response)))
  "Returns md5sum for a message object of type 'Tool-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tool-response>)))
  "Returns full string definition for message of type '<Tool-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tool-response)))
  "Returns full string definition for message of type 'Tool-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tool-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Tool-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Tool)))
  'Tool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Tool)))
  'Tool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool)))
  "Returns string type for a service object of type '<Tool>"
  "dobot_bringup/Tool")