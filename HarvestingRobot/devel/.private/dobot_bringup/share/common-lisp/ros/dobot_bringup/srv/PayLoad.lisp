; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude PayLoad-request.msg.html

(cl:defclass <PayLoad-request> (roslisp-msg-protocol:ros-message)
  ((weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (inertia
    :reader inertia
    :initarg :inertia
    :type cl:float
    :initform 0.0))
)

(cl:defclass PayLoad-request (<PayLoad-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PayLoad-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PayLoad-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PayLoad-request> is deprecated: use dobot_bringup-srv:PayLoad-request instead.")))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <PayLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:weight-val is deprecated.  Use dobot_bringup-srv:weight instead.")
  (weight m))

(cl:ensure-generic-function 'inertia-val :lambda-list '(m))
(cl:defmethod inertia-val ((m <PayLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:inertia-val is deprecated.  Use dobot_bringup-srv:inertia instead.")
  (inertia m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PayLoad-request>) ostream)
  "Serializes a message object of type '<PayLoad-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inertia))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PayLoad-request>) istream)
  "Deserializes a message object of type '<PayLoad-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inertia) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PayLoad-request>)))
  "Returns string type for a service object of type '<PayLoad-request>"
  "dobot_bringup/PayLoadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PayLoad-request)))
  "Returns string type for a service object of type 'PayLoad-request"
  "dobot_bringup/PayLoadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PayLoad-request>)))
  "Returns md5sum for a message object of type '<PayLoad-request>"
  "81150ead356b50be531e7bdd2240ca16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PayLoad-request)))
  "Returns md5sum for a message object of type 'PayLoad-request"
  "81150ead356b50be531e7bdd2240ca16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PayLoad-request>)))
  "Returns full string definition for message of type '<PayLoad-request>"
  (cl:format cl:nil "~%float64 weight~%float64 inertia~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PayLoad-request)))
  "Returns full string definition for message of type 'PayLoad-request"
  (cl:format cl:nil "~%float64 weight~%float64 inertia~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PayLoad-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PayLoad-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PayLoad-request
    (cl:cons ':weight (weight msg))
    (cl:cons ':inertia (inertia msg))
))
;//! \htmlinclude PayLoad-response.msg.html

(cl:defclass <PayLoad-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass PayLoad-response (<PayLoad-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PayLoad-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PayLoad-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<PayLoad-response> is deprecated: use dobot_bringup-srv:PayLoad-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <PayLoad-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PayLoad-response>) ostream)
  "Serializes a message object of type '<PayLoad-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PayLoad-response>) istream)
  "Deserializes a message object of type '<PayLoad-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PayLoad-response>)))
  "Returns string type for a service object of type '<PayLoad-response>"
  "dobot_bringup/PayLoadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PayLoad-response)))
  "Returns string type for a service object of type 'PayLoad-response"
  "dobot_bringup/PayLoadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PayLoad-response>)))
  "Returns md5sum for a message object of type '<PayLoad-response>"
  "81150ead356b50be531e7bdd2240ca16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PayLoad-response)))
  "Returns md5sum for a message object of type 'PayLoad-response"
  "81150ead356b50be531e7bdd2240ca16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PayLoad-response>)))
  "Returns full string definition for message of type '<PayLoad-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PayLoad-response)))
  "Returns full string definition for message of type 'PayLoad-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PayLoad-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PayLoad-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PayLoad-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PayLoad)))
  'PayLoad-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PayLoad)))
  'PayLoad-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PayLoad)))
  "Returns string type for a service object of type '<PayLoad>"
  "dobot_bringup/PayLoad")