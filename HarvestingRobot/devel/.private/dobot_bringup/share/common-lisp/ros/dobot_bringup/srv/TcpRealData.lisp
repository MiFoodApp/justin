; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude TcpRealData-request.msg.html

(cl:defclass <TcpRealData-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass TcpRealData-request (<TcpRealData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TcpRealData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TcpRealData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TcpRealData-request> is deprecated: use dobot_bringup-srv:TcpRealData-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <TcpRealData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <TcpRealData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:size-val is deprecated.  Use dobot_bringup-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TcpRealData-request>) ostream)
  "Serializes a message object of type '<TcpRealData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TcpRealData-request>) istream)
  "Deserializes a message object of type '<TcpRealData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TcpRealData-request>)))
  "Returns string type for a service object of type '<TcpRealData-request>"
  "dobot_bringup/TcpRealDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpRealData-request)))
  "Returns string type for a service object of type 'TcpRealData-request"
  "dobot_bringup/TcpRealDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TcpRealData-request>)))
  "Returns md5sum for a message object of type '<TcpRealData-request>"
  "977c1f4a671c337178b1c34621b41356")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TcpRealData-request)))
  "Returns md5sum for a message object of type 'TcpRealData-request"
  "977c1f4a671c337178b1c34621b41356")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TcpRealData-request>)))
  "Returns full string definition for message of type '<TcpRealData-request>"
  (cl:format cl:nil "uint32 index~%uint32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TcpRealData-request)))
  "Returns full string definition for message of type 'TcpRealData-request"
  (cl:format cl:nil "uint32 index~%uint32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TcpRealData-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TcpRealData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TcpRealData-request
    (cl:cons ':index (index msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude TcpRealData-response.msg.html

(cl:defclass <TcpRealData-response> (roslisp-msg-protocol:ros-message)
  ((real_data
    :reader real_data
    :initarg :real_data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TcpRealData-response (<TcpRealData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TcpRealData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TcpRealData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TcpRealData-response> is deprecated: use dobot_bringup-srv:TcpRealData-response instead.")))

(cl:ensure-generic-function 'real_data-val :lambda-list '(m))
(cl:defmethod real_data-val ((m <TcpRealData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:real_data-val is deprecated.  Use dobot_bringup-srv:real_data instead.")
  (real_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TcpRealData-response>) ostream)
  "Serializes a message object of type '<TcpRealData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'real_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'real_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TcpRealData-response>) istream)
  "Deserializes a message object of type '<TcpRealData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'real_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'real_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TcpRealData-response>)))
  "Returns string type for a service object of type '<TcpRealData-response>"
  "dobot_bringup/TcpRealDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpRealData-response)))
  "Returns string type for a service object of type 'TcpRealData-response"
  "dobot_bringup/TcpRealDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TcpRealData-response>)))
  "Returns md5sum for a message object of type '<TcpRealData-response>"
  "977c1f4a671c337178b1c34621b41356")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TcpRealData-response)))
  "Returns md5sum for a message object of type 'TcpRealData-response"
  "977c1f4a671c337178b1c34621b41356")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TcpRealData-response>)))
  "Returns full string definition for message of type '<TcpRealData-response>"
  (cl:format cl:nil "uint8[] real_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TcpRealData-response)))
  "Returns full string definition for message of type 'TcpRealData-response"
  (cl:format cl:nil "uint8[] real_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TcpRealData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'real_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TcpRealData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TcpRealData-response
    (cl:cons ':real_data (real_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TcpRealData)))
  'TcpRealData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TcpRealData)))
  'TcpRealData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpRealData)))
  "Returns string type for a service object of type '<TcpRealData>"
  "dobot_bringup/TcpRealData")