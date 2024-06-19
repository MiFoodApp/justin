; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude RelMovJ-request.msg.html

(cl:defclass <RelMovJ-request> (roslisp-msg-protocol:ros-message)
  ((offset1
    :reader offset1
    :initarg :offset1
    :type cl:float
    :initform 0.0)
   (offset2
    :reader offset2
    :initarg :offset2
    :type cl:float
    :initform 0.0)
   (offset3
    :reader offset3
    :initarg :offset3
    :type cl:float
    :initform 0.0)
   (offset4
    :reader offset4
    :initarg :offset4
    :type cl:float
    :initform 0.0)
   (offset5
    :reader offset5
    :initarg :offset5
    :type cl:float
    :initform 0.0)
   (offset6
    :reader offset6
    :initarg :offset6
    :type cl:float
    :initform 0.0))
)

(cl:defclass RelMovJ-request (<RelMovJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelMovJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelMovJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RelMovJ-request> is deprecated: use dobot_bringup-srv:RelMovJ-request instead.")))

(cl:ensure-generic-function 'offset1-val :lambda-list '(m))
(cl:defmethod offset1-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset1-val is deprecated.  Use dobot_bringup-srv:offset1 instead.")
  (offset1 m))

(cl:ensure-generic-function 'offset2-val :lambda-list '(m))
(cl:defmethod offset2-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset2-val is deprecated.  Use dobot_bringup-srv:offset2 instead.")
  (offset2 m))

(cl:ensure-generic-function 'offset3-val :lambda-list '(m))
(cl:defmethod offset3-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset3-val is deprecated.  Use dobot_bringup-srv:offset3 instead.")
  (offset3 m))

(cl:ensure-generic-function 'offset4-val :lambda-list '(m))
(cl:defmethod offset4-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset4-val is deprecated.  Use dobot_bringup-srv:offset4 instead.")
  (offset4 m))

(cl:ensure-generic-function 'offset5-val :lambda-list '(m))
(cl:defmethod offset5-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset5-val is deprecated.  Use dobot_bringup-srv:offset5 instead.")
  (offset5 m))

(cl:ensure-generic-function 'offset6-val :lambda-list '(m))
(cl:defmethod offset6-val ((m <RelMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset6-val is deprecated.  Use dobot_bringup-srv:offset6 instead.")
  (offset6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelMovJ-request>) ostream)
  "Serializes a message object of type '<RelMovJ-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelMovJ-request>) istream)
  "Deserializes a message object of type '<RelMovJ-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset4) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset5) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset6) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelMovJ-request>)))
  "Returns string type for a service object of type '<RelMovJ-request>"
  "dobot_bringup/RelMovJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelMovJ-request)))
  "Returns string type for a service object of type 'RelMovJ-request"
  "dobot_bringup/RelMovJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelMovJ-request>)))
  "Returns md5sum for a message object of type '<RelMovJ-request>"
  "e279c0ec95d750d32f1bcdc49940f3d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelMovJ-request)))
  "Returns md5sum for a message object of type 'RelMovJ-request"
  "e279c0ec95d750d32f1bcdc49940f3d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelMovJ-request>)))
  "Returns full string definition for message of type '<RelMovJ-request>"
  (cl:format cl:nil "float64 offset1~%float64 offset2~%float64 offset3~%float64 offset4~%float64 offset5~%float64 offset6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelMovJ-request)))
  "Returns full string definition for message of type 'RelMovJ-request"
  (cl:format cl:nil "float64 offset1~%float64 offset2~%float64 offset3~%float64 offset4~%float64 offset5~%float64 offset6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelMovJ-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelMovJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelMovJ-request
    (cl:cons ':offset1 (offset1 msg))
    (cl:cons ':offset2 (offset2 msg))
    (cl:cons ':offset3 (offset3 msg))
    (cl:cons ':offset4 (offset4 msg))
    (cl:cons ':offset5 (offset5 msg))
    (cl:cons ':offset6 (offset6 msg))
))
;//! \htmlinclude RelMovJ-response.msg.html

(cl:defclass <RelMovJ-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass RelMovJ-response (<RelMovJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelMovJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelMovJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RelMovJ-response> is deprecated: use dobot_bringup-srv:RelMovJ-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <RelMovJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelMovJ-response>) ostream)
  "Serializes a message object of type '<RelMovJ-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelMovJ-response>) istream)
  "Deserializes a message object of type '<RelMovJ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelMovJ-response>)))
  "Returns string type for a service object of type '<RelMovJ-response>"
  "dobot_bringup/RelMovJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelMovJ-response)))
  "Returns string type for a service object of type 'RelMovJ-response"
  "dobot_bringup/RelMovJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelMovJ-response>)))
  "Returns md5sum for a message object of type '<RelMovJ-response>"
  "e279c0ec95d750d32f1bcdc49940f3d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelMovJ-response)))
  "Returns md5sum for a message object of type 'RelMovJ-response"
  "e279c0ec95d750d32f1bcdc49940f3d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelMovJ-response>)))
  "Returns full string definition for message of type '<RelMovJ-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelMovJ-response)))
  "Returns full string definition for message of type 'RelMovJ-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelMovJ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelMovJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelMovJ-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelMovJ)))
  'RelMovJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelMovJ)))
  'RelMovJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelMovJ)))
  "Returns string type for a service object of type '<RelMovJ>"
  "dobot_bringup/RelMovJ")