; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude Arch-request.msg.html

(cl:defclass <Arch-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (cpValue
    :reader cpValue
    :initarg :cpValue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Arch-request (<Arch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Arch-request> is deprecated: use dobot_bringup-srv:Arch-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Arch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'cpValue-val :lambda-list '(m))
(cl:defmethod cpValue-val ((m <Arch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:cpValue-val is deprecated.  Use dobot_bringup-srv:cpValue instead.")
  (cpValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arch-request>) ostream)
  "Serializes a message object of type '<Arch-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cpValue))))
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
   (cl:slot-value msg 'cpValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arch-request>) istream)
  "Deserializes a message object of type '<Arch-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cpValue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cpValue)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arch-request>)))
  "Returns string type for a service object of type '<Arch-request>"
  "dobot_bringup/ArchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arch-request)))
  "Returns string type for a service object of type 'Arch-request"
  "dobot_bringup/ArchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arch-request>)))
  "Returns md5sum for a message object of type '<Arch-request>"
  "3132df4db7e08204c2a513558532b2ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arch-request)))
  "Returns md5sum for a message object of type 'Arch-request"
  "3132df4db7e08204c2a513558532b2ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arch-request>)))
  "Returns full string definition for message of type '<Arch-request>"
  (cl:format cl:nil "# index --> 0 - 9~%~%int32 index~%string[] cpValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arch-request)))
  "Returns full string definition for message of type 'Arch-request"
  (cl:format cl:nil "# index --> 0 - 9~%~%int32 index~%string[] cpValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arch-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cpValue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Arch-request
    (cl:cons ':index (index msg))
    (cl:cons ':cpValue (cpValue msg))
))
;//! \htmlinclude Arch-response.msg.html

(cl:defclass <Arch-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass Arch-response (<Arch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Arch-response> is deprecated: use dobot_bringup-srv:Arch-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Arch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arch-response>) ostream)
  "Serializes a message object of type '<Arch-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arch-response>) istream)
  "Deserializes a message object of type '<Arch-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arch-response>)))
  "Returns string type for a service object of type '<Arch-response>"
  "dobot_bringup/ArchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arch-response)))
  "Returns string type for a service object of type 'Arch-response"
  "dobot_bringup/ArchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arch-response>)))
  "Returns md5sum for a message object of type '<Arch-response>"
  "3132df4db7e08204c2a513558532b2ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arch-response)))
  "Returns md5sum for a message object of type 'Arch-response"
  "3132df4db7e08204c2a513558532b2ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arch-response>)))
  "Returns full string definition for message of type '<Arch-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arch-response)))
  "Returns full string definition for message of type 'Arch-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arch-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Arch-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Arch)))
  'Arch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Arch)))
  'Arch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arch)))
  "Returns string type for a service object of type '<Arch>"
  "dobot_bringup/Arch")