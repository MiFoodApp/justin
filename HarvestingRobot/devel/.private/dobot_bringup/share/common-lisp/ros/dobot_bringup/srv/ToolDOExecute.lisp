; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude ToolDOExecute-request.msg.html

(cl:defclass <ToolDOExecute-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolDOExecute-request (<ToolDOExecute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolDOExecute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolDOExecute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolDOExecute-request> is deprecated: use dobot_bringup-srv:ToolDOExecute-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ToolDOExecute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ToolDOExecute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolDOExecute-request>) ostream)
  "Serializes a message object of type '<ToolDOExecute-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolDOExecute-request>) istream)
  "Deserializes a message object of type '<ToolDOExecute-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolDOExecute-request>)))
  "Returns string type for a service object of type '<ToolDOExecute-request>"
  "dobot_bringup/ToolDOExecuteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDOExecute-request)))
  "Returns string type for a service object of type 'ToolDOExecute-request"
  "dobot_bringup/ToolDOExecuteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolDOExecute-request>)))
  "Returns md5sum for a message object of type '<ToolDOExecute-request>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolDOExecute-request)))
  "Returns md5sum for a message object of type 'ToolDOExecute-request"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolDOExecute-request>)))
  "Returns full string definition for message of type '<ToolDOExecute-request>"
  (cl:format cl:nil "int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolDOExecute-request)))
  "Returns full string definition for message of type 'ToolDOExecute-request"
  (cl:format cl:nil "int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolDOExecute-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolDOExecute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolDOExecute-request
    (cl:cons ':index (index msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude ToolDOExecute-response.msg.html

(cl:defclass <ToolDOExecute-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ToolDOExecute-response (<ToolDOExecute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolDOExecute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolDOExecute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<ToolDOExecute-response> is deprecated: use dobot_bringup-srv:ToolDOExecute-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ToolDOExecute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolDOExecute-response>) ostream)
  "Serializes a message object of type '<ToolDOExecute-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolDOExecute-response>) istream)
  "Deserializes a message object of type '<ToolDOExecute-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolDOExecute-response>)))
  "Returns string type for a service object of type '<ToolDOExecute-response>"
  "dobot_bringup/ToolDOExecuteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDOExecute-response)))
  "Returns string type for a service object of type 'ToolDOExecute-response"
  "dobot_bringup/ToolDOExecuteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolDOExecute-response>)))
  "Returns md5sum for a message object of type '<ToolDOExecute-response>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolDOExecute-response)))
  "Returns md5sum for a message object of type 'ToolDOExecute-response"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolDOExecute-response>)))
  "Returns full string definition for message of type '<ToolDOExecute-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolDOExecute-response)))
  "Returns full string definition for message of type 'ToolDOExecute-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolDOExecute-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolDOExecute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolDOExecute-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToolDOExecute)))
  'ToolDOExecute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToolDOExecute)))
  'ToolDOExecute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolDOExecute)))
  "Returns string type for a service object of type '<ToolDOExecute>"
  "dobot_bringup/ToolDOExecute")