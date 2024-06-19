; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude MovJExt-request.msg.html

(cl:defclass <MovJExt-request> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (paramValue
    :reader paramValue
    :initarg :paramValue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass MovJExt-request (<MovJExt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovJExt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovJExt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<MovJExt-request> is deprecated: use dobot_bringup-srv:MovJExt-request instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MovJExt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:offset-val is deprecated.  Use dobot_bringup-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'paramValue-val :lambda-list '(m))
(cl:defmethod paramValue-val ((m <MovJExt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:paramValue-val is deprecated.  Use dobot_bringup-srv:paramValue instead.")
  (paramValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovJExt-request>) ostream)
  "Serializes a message object of type '<MovJExt-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovJExt-request>) istream)
  "Deserializes a message object of type '<MovJExt-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovJExt-request>)))
  "Returns string type for a service object of type '<MovJExt-request>"
  "dobot_bringup/MovJExtRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovJExt-request)))
  "Returns string type for a service object of type 'MovJExt-request"
  "dobot_bringup/MovJExtRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovJExt-request>)))
  "Returns md5sum for a message object of type '<MovJExt-request>"
  "9c5f1f0d2ab66db2c121e88f04537959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovJExt-request)))
  "Returns md5sum for a message object of type 'MovJExt-request"
  "9c5f1f0d2ab66db2c121e88f04537959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovJExt-request>)))
  "Returns full string definition for message of type '<MovJExt-request>"
  (cl:format cl:nil "float64 offset~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovJExt-request)))
  "Returns full string definition for message of type 'MovJExt-request"
  (cl:format cl:nil "float64 offset~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovJExt-request>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paramValue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovJExt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MovJExt-request
    (cl:cons ':offset (offset msg))
    (cl:cons ':paramValue (paramValue msg))
))
;//! \htmlinclude MovJExt-response.msg.html

(cl:defclass <MovJExt-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass MovJExt-response (<MovJExt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovJExt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovJExt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<MovJExt-response> is deprecated: use dobot_bringup-srv:MovJExt-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <MovJExt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovJExt-response>) ostream)
  "Serializes a message object of type '<MovJExt-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovJExt-response>) istream)
  "Deserializes a message object of type '<MovJExt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovJExt-response>)))
  "Returns string type for a service object of type '<MovJExt-response>"
  "dobot_bringup/MovJExtResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovJExt-response)))
  "Returns string type for a service object of type 'MovJExt-response"
  "dobot_bringup/MovJExtResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovJExt-response>)))
  "Returns md5sum for a message object of type '<MovJExt-response>"
  "9c5f1f0d2ab66db2c121e88f04537959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovJExt-response)))
  "Returns md5sum for a message object of type 'MovJExt-response"
  "9c5f1f0d2ab66db2c121e88f04537959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovJExt-response>)))
  "Returns full string definition for message of type '<MovJExt-response>"
  (cl:format cl:nil "~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovJExt-response)))
  "Returns full string definition for message of type 'MovJExt-response"
  (cl:format cl:nil "~%int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovJExt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovJExt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MovJExt-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MovJExt)))
  'MovJExt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MovJExt)))
  'MovJExt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovJExt)))
  "Returns string type for a service object of type '<MovJExt>"
  "dobot_bringup/MovJExt")