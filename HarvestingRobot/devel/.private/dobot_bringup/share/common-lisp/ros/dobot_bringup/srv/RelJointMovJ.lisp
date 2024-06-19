; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude RelJointMovJ-request.msg.html

(cl:defclass <RelJointMovJ-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (paramValue
    :reader paramValue
    :initarg :paramValue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RelJointMovJ-request (<RelJointMovJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelJointMovJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelJointMovJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RelJointMovJ-request> is deprecated: use dobot_bringup-srv:RelJointMovJ-request instead.")))

(cl:ensure-generic-function 'offset1-val :lambda-list '(m))
(cl:defmethod offset1-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset1-val is deprecated.  Use dobot_bringup-srv:offset1 instead.")
  (offset1 m))

(cl:ensure-generic-function 'offset2-val :lambda-list '(m))
(cl:defmethod offset2-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset2-val is deprecated.  Use dobot_bringup-srv:offset2 instead.")
  (offset2 m))

(cl:ensure-generic-function 'offset3-val :lambda-list '(m))
(cl:defmethod offset3-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset3-val is deprecated.  Use dobot_bringup-srv:offset3 instead.")
  (offset3 m))

(cl:ensure-generic-function 'offset4-val :lambda-list '(m))
(cl:defmethod offset4-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset4-val is deprecated.  Use dobot_bringup-srv:offset4 instead.")
  (offset4 m))

(cl:ensure-generic-function 'offset5-val :lambda-list '(m))
(cl:defmethod offset5-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset5-val is deprecated.  Use dobot_bringup-srv:offset5 instead.")
  (offset5 m))

(cl:ensure-generic-function 'offset6-val :lambda-list '(m))
(cl:defmethod offset6-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset6-val is deprecated.  Use dobot_bringup-srv:offset6 instead.")
  (offset6 m))

(cl:ensure-generic-function 'paramValue-val :lambda-list '(m))
(cl:defmethod paramValue-val ((m <RelJointMovJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:paramValue-val is deprecated.  Use dobot_bringup-srv:paramValue instead.")
  (paramValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelJointMovJ-request>) ostream)
  "Serializes a message object of type '<RelJointMovJ-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paramValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'paramValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelJointMovJ-request>) istream)
  "Deserializes a message object of type '<RelJointMovJ-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paramValue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paramValue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelJointMovJ-request>)))
  "Returns string type for a service object of type '<RelJointMovJ-request>"
  "dobot_bringup/RelJointMovJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelJointMovJ-request)))
  "Returns string type for a service object of type 'RelJointMovJ-request"
  "dobot_bringup/RelJointMovJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelJointMovJ-request>)))
  "Returns md5sum for a message object of type '<RelJointMovJ-request>"
  "03967d766f807d795f6e85af35f413a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelJointMovJ-request)))
  "Returns md5sum for a message object of type 'RelJointMovJ-request"
  "03967d766f807d795f6e85af35f413a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelJointMovJ-request>)))
  "Returns full string definition for message of type '<RelJointMovJ-request>"
  (cl:format cl:nil "float64 offset1~%float64 offset2~%float64 offset3~%float64 offset4~%float64 offset5~%float64 offset6~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelJointMovJ-request)))
  "Returns full string definition for message of type 'RelJointMovJ-request"
  (cl:format cl:nil "float64 offset1~%float64 offset2~%float64 offset3~%float64 offset4~%float64 offset5~%float64 offset6~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelJointMovJ-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paramValue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelJointMovJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelJointMovJ-request
    (cl:cons ':offset1 (offset1 msg))
    (cl:cons ':offset2 (offset2 msg))
    (cl:cons ':offset3 (offset3 msg))
    (cl:cons ':offset4 (offset4 msg))
    (cl:cons ':offset5 (offset5 msg))
    (cl:cons ':offset6 (offset6 msg))
    (cl:cons ':paramValue (paramValue msg))
))
;//! \htmlinclude RelJointMovJ-response.msg.html

(cl:defclass <RelJointMovJ-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass RelJointMovJ-response (<RelJointMovJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelJointMovJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelJointMovJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RelJointMovJ-response> is deprecated: use dobot_bringup-srv:RelJointMovJ-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <RelJointMovJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelJointMovJ-response>) ostream)
  "Serializes a message object of type '<RelJointMovJ-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelJointMovJ-response>) istream)
  "Deserializes a message object of type '<RelJointMovJ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelJointMovJ-response>)))
  "Returns string type for a service object of type '<RelJointMovJ-response>"
  "dobot_bringup/RelJointMovJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelJointMovJ-response)))
  "Returns string type for a service object of type 'RelJointMovJ-response"
  "dobot_bringup/RelJointMovJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelJointMovJ-response>)))
  "Returns md5sum for a message object of type '<RelJointMovJ-response>"
  "03967d766f807d795f6e85af35f413a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelJointMovJ-response)))
  "Returns md5sum for a message object of type 'RelJointMovJ-response"
  "03967d766f807d795f6e85af35f413a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelJointMovJ-response>)))
  "Returns full string definition for message of type '<RelJointMovJ-response>"
  (cl:format cl:nil "~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelJointMovJ-response)))
  "Returns full string definition for message of type 'RelJointMovJ-response"
  (cl:format cl:nil "~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelJointMovJ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelJointMovJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelJointMovJ-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelJointMovJ)))
  'RelJointMovJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelJointMovJ)))
  'RelJointMovJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelJointMovJ)))
  "Returns string type for a service object of type '<RelJointMovJ>"
  "dobot_bringup/RelJointMovJ")