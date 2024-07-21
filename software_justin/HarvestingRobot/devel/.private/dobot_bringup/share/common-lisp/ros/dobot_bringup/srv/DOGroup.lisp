; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DOGroup-request.msg.html

(cl:defclass <DOGroup-request> (roslisp-msg-protocol:ros-message)
  ((args
    :reader args
    :initarg :args
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DOGroup-request (<DOGroup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOGroup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOGroup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DOGroup-request> is deprecated: use dobot_bringup-srv:DOGroup-request instead.")))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <DOGroup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:args-val is deprecated.  Use dobot_bringup-srv:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOGroup-request>) ostream)
  "Serializes a message object of type '<DOGroup-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOGroup-request>) istream)
  "Deserializes a message object of type '<DOGroup-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOGroup-request>)))
  "Returns string type for a service object of type '<DOGroup-request>"
  "dobot_bringup/DOGroupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOGroup-request)))
  "Returns string type for a service object of type 'DOGroup-request"
  "dobot_bringup/DOGroupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOGroup-request>)))
  "Returns md5sum for a message object of type '<DOGroup-request>"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOGroup-request)))
  "Returns md5sum for a message object of type 'DOGroup-request"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOGroup-request>)))
  "Returns full string definition for message of type '<DOGroup-request>"
  (cl:format cl:nil "int32[] args~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOGroup-request)))
  "Returns full string definition for message of type 'DOGroup-request"
  (cl:format cl:nil "int32[] args~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOGroup-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOGroup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DOGroup-request
    (cl:cons ':args (args msg))
))
;//! \htmlinclude DOGroup-response.msg.html

(cl:defclass <DOGroup-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DOGroup-response (<DOGroup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOGroup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOGroup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DOGroup-response> is deprecated: use dobot_bringup-srv:DOGroup-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DOGroup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOGroup-response>) ostream)
  "Serializes a message object of type '<DOGroup-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOGroup-response>) istream)
  "Deserializes a message object of type '<DOGroup-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOGroup-response>)))
  "Returns string type for a service object of type '<DOGroup-response>"
  "dobot_bringup/DOGroupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOGroup-response)))
  "Returns string type for a service object of type 'DOGroup-response"
  "dobot_bringup/DOGroupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOGroup-response>)))
  "Returns md5sum for a message object of type '<DOGroup-response>"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOGroup-response)))
  "Returns md5sum for a message object of type 'DOGroup-response"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOGroup-response>)))
  "Returns full string definition for message of type '<DOGroup-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOGroup-response)))
  "Returns full string definition for message of type 'DOGroup-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOGroup-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOGroup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DOGroup-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DOGroup)))
  'DOGroup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DOGroup)))
  'DOGroup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOGroup)))
  "Returns string type for a service object of type '<DOGroup>"
  "dobot_bringup/DOGroup")