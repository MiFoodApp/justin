; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude AO-request.msg.html

(cl:defclass <AO-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AO-request (<AO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AO-request> is deprecated: use dobot_bringup-srv:AO-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <AO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AO-request>) ostream)
  "Serializes a message object of type '<AO-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AO-request>) istream)
  "Deserializes a message object of type '<AO-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AO-request>)))
  "Returns string type for a service object of type '<AO-request>"
  "dobot_bringup/AORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AO-request)))
  "Returns string type for a service object of type 'AO-request"
  "dobot_bringup/AORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AO-request>)))
  "Returns md5sum for a message object of type '<AO-request>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AO-request)))
  "Returns md5sum for a message object of type 'AO-request"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AO-request>)))
  "Returns full string definition for message of type '<AO-request>"
  (cl:format cl:nil "# index --> 1 - 2~%# value --> 0 - 10~%int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AO-request)))
  "Returns full string definition for message of type 'AO-request"
  (cl:format cl:nil "# index --> 1 - 2~%# value --> 0 - 10~%int32 index~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AO-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AO-request
    (cl:cons ':index (index msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude AO-response.msg.html

(cl:defclass <AO-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass AO-response (<AO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<AO-response> is deprecated: use dobot_bringup-srv:AO-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <AO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AO-response>) ostream)
  "Serializes a message object of type '<AO-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AO-response>) istream)
  "Deserializes a message object of type '<AO-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AO-response>)))
  "Returns string type for a service object of type '<AO-response>"
  "dobot_bringup/AOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AO-response)))
  "Returns string type for a service object of type 'AO-response"
  "dobot_bringup/AOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AO-response>)))
  "Returns md5sum for a message object of type '<AO-response>"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AO-response)))
  "Returns md5sum for a message object of type 'AO-response"
  "096263ad689c1ece47cec4376ad5d3b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AO-response>)))
  "Returns full string definition for message of type '<AO-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AO-response)))
  "Returns full string definition for message of type 'AO-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AO-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AO-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AO)))
  'AO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AO)))
  'AO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AO)))
  "Returns string type for a service object of type '<AO>"
  "dobot_bringup/AO")