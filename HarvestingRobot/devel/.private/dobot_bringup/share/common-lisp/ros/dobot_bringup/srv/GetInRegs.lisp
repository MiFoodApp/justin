; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetInRegs-request.msg.html

(cl:defclass <GetInRegs-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (addr
    :reader addr
    :initarg :addr
    :type cl:integer
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (valType
    :reader valType
    :initarg :valType
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetInRegs-request (<GetInRegs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInRegs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInRegs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetInRegs-request> is deprecated: use dobot_bringup-srv:GetInRegs-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <GetInRegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <GetInRegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:addr-val is deprecated.  Use dobot_bringup-srv:addr instead.")
  (addr m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <GetInRegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:count-val is deprecated.  Use dobot_bringup-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'valType-val :lambda-list '(m))
(cl:defmethod valType-val ((m <GetInRegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:valType-val is deprecated.  Use dobot_bringup-srv:valType instead.")
  (valType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInRegs-request>) ostream)
  "Serializes a message object of type '<GetInRegs-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'valType))))
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
   (cl:slot-value msg 'valType))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInRegs-request>) istream)
  "Deserializes a message object of type '<GetInRegs-request>"
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
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'valType) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'valType)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInRegs-request>)))
  "Returns string type for a service object of type '<GetInRegs-request>"
  "dobot_bringup/GetInRegsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInRegs-request)))
  "Returns string type for a service object of type 'GetInRegs-request"
  "dobot_bringup/GetInRegsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInRegs-request>)))
  "Returns md5sum for a message object of type '<GetInRegs-request>"
  "52234d8943fca7222a9cdf043482aad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInRegs-request)))
  "Returns md5sum for a message object of type 'GetInRegs-request"
  "52234d8943fca7222a9cdf043482aad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInRegs-request>)))
  "Returns full string definition for message of type '<GetInRegs-request>"
  (cl:format cl:nil "int32 index~%int32 addr~%int32 count~%string[] valType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInRegs-request)))
  "Returns full string definition for message of type 'GetInRegs-request"
  (cl:format cl:nil "int32 index~%int32 addr~%int32 count~%string[] valType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInRegs-request>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'valType) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInRegs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInRegs-request
    (cl:cons ':index (index msg))
    (cl:cons ':addr (addr msg))
    (cl:cons ':count (count msg))
    (cl:cons ':valType (valType msg))
))
;//! \htmlinclude GetInRegs-response.msg.html

(cl:defclass <GetInRegs-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetInRegs-response (<GetInRegs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInRegs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInRegs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetInRegs-response> is deprecated: use dobot_bringup-srv:GetInRegs-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetInRegs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInRegs-response>) ostream)
  "Serializes a message object of type '<GetInRegs-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInRegs-response>) istream)
  "Deserializes a message object of type '<GetInRegs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInRegs-response>)))
  "Returns string type for a service object of type '<GetInRegs-response>"
  "dobot_bringup/GetInRegsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInRegs-response)))
  "Returns string type for a service object of type 'GetInRegs-response"
  "dobot_bringup/GetInRegsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInRegs-response>)))
  "Returns md5sum for a message object of type '<GetInRegs-response>"
  "52234d8943fca7222a9cdf043482aad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInRegs-response)))
  "Returns md5sum for a message object of type 'GetInRegs-response"
  "52234d8943fca7222a9cdf043482aad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInRegs-response>)))
  "Returns full string definition for message of type '<GetInRegs-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInRegs-response)))
  "Returns full string definition for message of type 'GetInRegs-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInRegs-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInRegs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInRegs-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInRegs)))
  'GetInRegs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInRegs)))
  'GetInRegs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInRegs)))
  "Returns string type for a service object of type '<GetInRegs>"
  "dobot_bringup/GetInRegs")