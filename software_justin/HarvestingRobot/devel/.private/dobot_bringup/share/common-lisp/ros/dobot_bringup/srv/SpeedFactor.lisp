; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SpeedFactor-request.msg.html

(cl:defclass <SpeedFactor-request> (roslisp-msg-protocol:ros-message)
  ((ratio
    :reader ratio
    :initarg :ratio
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedFactor-request (<SpeedFactor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedFactor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedFactor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedFactor-request> is deprecated: use dobot_bringup-srv:SpeedFactor-request instead.")))

(cl:ensure-generic-function 'ratio-val :lambda-list '(m))
(cl:defmethod ratio-val ((m <SpeedFactor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:ratio-val is deprecated.  Use dobot_bringup-srv:ratio instead.")
  (ratio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedFactor-request>) ostream)
  "Serializes a message object of type '<SpeedFactor-request>"
  (cl:let* ((signed (cl:slot-value msg 'ratio)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedFactor-request>) istream)
  "Deserializes a message object of type '<SpeedFactor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ratio) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedFactor-request>)))
  "Returns string type for a service object of type '<SpeedFactor-request>"
  "dobot_bringup/SpeedFactorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedFactor-request)))
  "Returns string type for a service object of type 'SpeedFactor-request"
  "dobot_bringup/SpeedFactorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedFactor-request>)))
  "Returns md5sum for a message object of type '<SpeedFactor-request>"
  "b12d6e3ef251a5d143f5b7b986591260")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedFactor-request)))
  "Returns md5sum for a message object of type 'SpeedFactor-request"
  "b12d6e3ef251a5d143f5b7b986591260")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedFactor-request>)))
  "Returns full string definition for message of type '<SpeedFactor-request>"
  (cl:format cl:nil "int32 ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedFactor-request)))
  "Returns full string definition for message of type 'SpeedFactor-request"
  (cl:format cl:nil "int32 ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedFactor-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedFactor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedFactor-request
    (cl:cons ':ratio (ratio msg))
))
;//! \htmlinclude SpeedFactor-response.msg.html

(cl:defclass <SpeedFactor-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedFactor-response (<SpeedFactor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedFactor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedFactor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SpeedFactor-response> is deprecated: use dobot_bringup-srv:SpeedFactor-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SpeedFactor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedFactor-response>) ostream)
  "Serializes a message object of type '<SpeedFactor-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedFactor-response>) istream)
  "Deserializes a message object of type '<SpeedFactor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedFactor-response>)))
  "Returns string type for a service object of type '<SpeedFactor-response>"
  "dobot_bringup/SpeedFactorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedFactor-response)))
  "Returns string type for a service object of type 'SpeedFactor-response"
  "dobot_bringup/SpeedFactorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedFactor-response>)))
  "Returns md5sum for a message object of type '<SpeedFactor-response>"
  "b12d6e3ef251a5d143f5b7b986591260")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedFactor-response)))
  "Returns md5sum for a message object of type 'SpeedFactor-response"
  "b12d6e3ef251a5d143f5b7b986591260")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedFactor-response>)))
  "Returns full string definition for message of type '<SpeedFactor-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedFactor-response)))
  "Returns full string definition for message of type 'SpeedFactor-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedFactor-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedFactor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedFactor-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeedFactor)))
  'SpeedFactor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeedFactor)))
  'SpeedFactor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedFactor)))
  "Returns string type for a service object of type '<SpeedFactor>"
  "dobot_bringup/SpeedFactor")