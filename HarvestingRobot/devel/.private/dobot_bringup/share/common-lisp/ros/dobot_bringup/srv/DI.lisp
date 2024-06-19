; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DI-request.msg.html

(cl:defclass <DI-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass DI-request (<DI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DI-request> is deprecated: use dobot_bringup-srv:DI-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <DI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DI-request>) ostream)
  "Serializes a message object of type '<DI-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DI-request>) istream)
  "Deserializes a message object of type '<DI-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DI-request>)))
  "Returns string type for a service object of type '<DI-request>"
  "dobot_bringup/DIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DI-request)))
  "Returns string type for a service object of type 'DI-request"
  "dobot_bringup/DIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DI-request>)))
  "Returns md5sum for a message object of type '<DI-request>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DI-request)))
  "Returns md5sum for a message object of type 'DI-request"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DI-request>)))
  "Returns full string definition for message of type '<DI-request>"
  (cl:format cl:nil "int32 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DI-request)))
  "Returns full string definition for message of type 'DI-request"
  (cl:format cl:nil "int32 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DI-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DI-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude DI-response.msg.html

(cl:defclass <DI-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DI-response (<DI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DI-response> is deprecated: use dobot_bringup-srv:DI-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DI-response>) ostream)
  "Serializes a message object of type '<DI-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DI-response>) istream)
  "Deserializes a message object of type '<DI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DI-response>)))
  "Returns string type for a service object of type '<DI-response>"
  "dobot_bringup/DIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DI-response)))
  "Returns string type for a service object of type 'DI-response"
  "dobot_bringup/DIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DI-response>)))
  "Returns md5sum for a message object of type '<DI-response>"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DI-response)))
  "Returns md5sum for a message object of type 'DI-response"
  "6d753c0adbdd6c06a6eb5c36aec96b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DI-response>)))
  "Returns full string definition for message of type '<DI-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DI-response)))
  "Returns full string definition for message of type 'DI-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DI-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DI-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DI)))
  'DI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DI)))
  'DI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DI)))
  "Returns string type for a service object of type '<DI>"
  "dobot_bringup/DI")