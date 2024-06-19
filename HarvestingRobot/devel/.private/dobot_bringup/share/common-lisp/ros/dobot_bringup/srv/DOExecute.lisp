; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DOExecute-request.msg.html

(cl:defclass <DOExecute-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DOExecute-request (<DOExecute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOExecute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOExecute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DOExecute-request> is deprecated: use dobot_bringup-srv:DOExecute-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <DOExecute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DOExecute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOExecute-request>) ostream)
  "Serializes a message object of type '<DOExecute-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOExecute-request>) istream)
  "Deserializes a message object of type '<DOExecute-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOExecute-request>)))
  "Returns string type for a service object of type '<DOExecute-request>"
  "dobot_bringup/DOExecuteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOExecute-request)))
  "Returns string type for a service object of type 'DOExecute-request"
  "dobot_bringup/DOExecuteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOExecute-request>)))
  "Returns md5sum for a message object of type '<DOExecute-request>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOExecute-request)))
  "Returns md5sum for a message object of type 'DOExecute-request"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOExecute-request>)))
  "Returns full string definition for message of type '<DOExecute-request>"
  (cl:format cl:nil "# r --> 1 - 24~%int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOExecute-request)))
  "Returns full string definition for message of type 'DOExecute-request"
  (cl:format cl:nil "# r --> 1 - 24~%int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOExecute-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOExecute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DOExecute-request
    (cl:cons ':index (index msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude DOExecute-response.msg.html

(cl:defclass <DOExecute-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DOExecute-response (<DOExecute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOExecute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOExecute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DOExecute-response> is deprecated: use dobot_bringup-srv:DOExecute-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DOExecute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOExecute-response>) ostream)
  "Serializes a message object of type '<DOExecute-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOExecute-response>) istream)
  "Deserializes a message object of type '<DOExecute-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOExecute-response>)))
  "Returns string type for a service object of type '<DOExecute-response>"
  "dobot_bringup/DOExecuteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOExecute-response)))
  "Returns string type for a service object of type 'DOExecute-response"
  "dobot_bringup/DOExecuteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOExecute-response>)))
  "Returns md5sum for a message object of type '<DOExecute-response>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOExecute-response)))
  "Returns md5sum for a message object of type 'DOExecute-response"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOExecute-response>)))
  "Returns full string definition for message of type '<DOExecute-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOExecute-response)))
  "Returns full string definition for message of type 'DOExecute-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOExecute-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOExecute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DOExecute-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DOExecute)))
  'DOExecute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DOExecute)))
  'DOExecute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOExecute)))
  "Returns string type for a service object of type '<DOExecute>"
  "dobot_bringup/DOExecute")