; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude CP-request.msg.html

(cl:defclass <CP-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass CP-request (<CP-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CP-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CP-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<CP-request> is deprecated: use dobot_bringup-srv:CP-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <CP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:r-val is deprecated.  Use dobot_bringup-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CP-request>) ostream)
  "Serializes a message object of type '<CP-request>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CP-request>) istream)
  "Deserializes a message object of type '<CP-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CP-request>)))
  "Returns string type for a service object of type '<CP-request>"
  "dobot_bringup/CPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CP-request)))
  "Returns string type for a service object of type 'CP-request"
  "dobot_bringup/CPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CP-request>)))
  "Returns md5sum for a message object of type '<CP-request>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CP-request)))
  "Returns md5sum for a message object of type 'CP-request"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CP-request>)))
  "Returns full string definition for message of type '<CP-request>"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CP-request)))
  "Returns full string definition for message of type 'CP-request"
  (cl:format cl:nil "# r --> 1 - 100~%int32 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CP-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CP-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CP-request
    (cl:cons ':r (r msg))
))
;//! \htmlinclude CP-response.msg.html

(cl:defclass <CP-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass CP-response (<CP-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CP-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CP-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<CP-response> is deprecated: use dobot_bringup-srv:CP-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <CP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CP-response>) ostream)
  "Serializes a message object of type '<CP-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CP-response>) istream)
  "Deserializes a message object of type '<CP-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CP-response>)))
  "Returns string type for a service object of type '<CP-response>"
  "dobot_bringup/CPResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CP-response)))
  "Returns string type for a service object of type 'CP-response"
  "dobot_bringup/CPResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CP-response>)))
  "Returns md5sum for a message object of type '<CP-response>"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CP-response)))
  "Returns md5sum for a message object of type 'CP-response"
  "941d9ecd0f5402311261de883bef5059")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CP-response>)))
  "Returns full string definition for message of type '<CP-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CP-response)))
  "Returns full string definition for message of type 'CP-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CP-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CP-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CP-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CP)))
  'CP-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CP)))
  'CP-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CP)))
  "Returns string type for a service object of type '<CP>"
  "dobot_bringup/CP")