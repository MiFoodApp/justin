; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude User-request.msg.html

(cl:defclass <User-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass User-request (<User-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <User-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'User-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<User-request> is deprecated: use dobot_bringup-srv:User-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <User-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <User-request>) ostream)
  "Serializes a message object of type '<User-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <User-request>) istream)
  "Deserializes a message object of type '<User-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<User-request>)))
  "Returns string type for a service object of type '<User-request>"
  "dobot_bringup/UserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'User-request)))
  "Returns string type for a service object of type 'User-request"
  "dobot_bringup/UserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<User-request>)))
  "Returns md5sum for a message object of type '<User-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'User-request)))
  "Returns md5sum for a message object of type 'User-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<User-request>)))
  "Returns full string definition for message of type '<User-request>"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'User-request)))
  "Returns full string definition for message of type 'User-request"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <User-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <User-request>))
  "Converts a ROS message object to a list"
  (cl:list 'User-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude User-response.msg.html

(cl:defclass <User-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass User-response (<User-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <User-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'User-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<User-response> is deprecated: use dobot_bringup-srv:User-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <User-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <User-response>) ostream)
  "Serializes a message object of type '<User-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <User-response>) istream)
  "Deserializes a message object of type '<User-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<User-response>)))
  "Returns string type for a service object of type '<User-response>"
  "dobot_bringup/UserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'User-response)))
  "Returns string type for a service object of type 'User-response"
  "dobot_bringup/UserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<User-response>)))
  "Returns md5sum for a message object of type '<User-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'User-response)))
  "Returns md5sum for a message object of type 'User-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<User-response>)))
  "Returns full string definition for message of type '<User-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'User-response)))
  "Returns full string definition for message of type 'User-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <User-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <User-response>))
  "Converts a ROS message object to a list"
  (cl:list 'User-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'User)))
  'User-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'User)))
  'User-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'User)))
  "Returns string type for a service object of type '<User>"
  "dobot_bringup/User")