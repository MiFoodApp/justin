; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StartPath-request.msg.html

(cl:defclass <StartPath-request> (roslisp-msg-protocol:ros-message)
  ((trace_name
    :reader trace_name
    :initarg :trace_name
    :type cl:string
    :initform "")
   (const_val
    :reader const_val
    :initarg :const_val
    :type cl:integer
    :initform 0)
   (cart
    :reader cart
    :initarg :cart
    :type cl:integer
    :initform 0))
)

(cl:defclass StartPath-request (<StartPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartPath-request> is deprecated: use dobot_bringup-srv:StartPath-request instead.")))

(cl:ensure-generic-function 'trace_name-val :lambda-list '(m))
(cl:defmethod trace_name-val ((m <StartPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:trace_name-val is deprecated.  Use dobot_bringup-srv:trace_name instead.")
  (trace_name m))

(cl:ensure-generic-function 'const_val-val :lambda-list '(m))
(cl:defmethod const_val-val ((m <StartPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:const_val-val is deprecated.  Use dobot_bringup-srv:const_val instead.")
  (const_val m))

(cl:ensure-generic-function 'cart-val :lambda-list '(m))
(cl:defmethod cart-val ((m <StartPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:cart-val is deprecated.  Use dobot_bringup-srv:cart instead.")
  (cart m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartPath-request>) ostream)
  "Serializes a message object of type '<StartPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trace_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trace_name))
  (cl:let* ((signed (cl:slot-value msg 'const_val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cart)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartPath-request>) istream)
  "Deserializes a message object of type '<StartPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trace_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trace_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'const_val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cart) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartPath-request>)))
  "Returns string type for a service object of type '<StartPath-request>"
  "dobot_bringup/StartPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPath-request)))
  "Returns string type for a service object of type 'StartPath-request"
  "dobot_bringup/StartPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartPath-request>)))
  "Returns md5sum for a message object of type '<StartPath-request>"
  "012e04e913faf311dafe5a22000e023c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartPath-request)))
  "Returns md5sum for a message object of type 'StartPath-request"
  "012e04e913faf311dafe5a22000e023c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartPath-request>)))
  "Returns full string definition for message of type '<StartPath-request>"
  (cl:format cl:nil "string trace_name~%int32 const_val~%int32 cart~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartPath-request)))
  "Returns full string definition for message of type 'StartPath-request"
  (cl:format cl:nil "string trace_name~%int32 const_val~%int32 cart~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'trace_name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartPath-request
    (cl:cons ':trace_name (trace_name msg))
    (cl:cons ':const_val (const_val msg))
    (cl:cons ':cart (cart msg))
))
;//! \htmlinclude StartPath-response.msg.html

(cl:defclass <StartPath-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StartPath-response (<StartPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartPath-response> is deprecated: use dobot_bringup-srv:StartPath-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StartPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartPath-response>) ostream)
  "Serializes a message object of type '<StartPath-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartPath-response>) istream)
  "Deserializes a message object of type '<StartPath-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartPath-response>)))
  "Returns string type for a service object of type '<StartPath-response>"
  "dobot_bringup/StartPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPath-response)))
  "Returns string type for a service object of type 'StartPath-response"
  "dobot_bringup/StartPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartPath-response>)))
  "Returns md5sum for a message object of type '<StartPath-response>"
  "012e04e913faf311dafe5a22000e023c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartPath-response)))
  "Returns md5sum for a message object of type 'StartPath-response"
  "012e04e913faf311dafe5a22000e023c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartPath-response>)))
  "Returns full string definition for message of type '<StartPath-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartPath-response)))
  "Returns full string definition for message of type 'StartPath-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartPath-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartPath-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartPath)))
  'StartPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartPath)))
  'StartPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPath)))
  "Returns string type for a service object of type '<StartPath>"
  "dobot_bringup/StartPath")