; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DIGroup-request.msg.html

(cl:defclass <DIGroup-request> (roslisp-msg-protocol:ros-message)
  ((args
    :reader args
    :initarg :args
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DIGroup-request (<DIGroup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DIGroup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DIGroup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DIGroup-request> is deprecated: use dobot_bringup-srv:DIGroup-request instead.")))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <DIGroup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:args-val is deprecated.  Use dobot_bringup-srv:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DIGroup-request>) ostream)
  "Serializes a message object of type '<DIGroup-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DIGroup-request>) istream)
  "Deserializes a message object of type '<DIGroup-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DIGroup-request>)))
  "Returns string type for a service object of type '<DIGroup-request>"
  "dobot_bringup/DIGroupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DIGroup-request)))
  "Returns string type for a service object of type 'DIGroup-request"
  "dobot_bringup/DIGroupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DIGroup-request>)))
  "Returns md5sum for a message object of type '<DIGroup-request>"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DIGroup-request)))
  "Returns md5sum for a message object of type 'DIGroup-request"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DIGroup-request>)))
  "Returns full string definition for message of type '<DIGroup-request>"
  (cl:format cl:nil "int32[] args~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DIGroup-request)))
  "Returns full string definition for message of type 'DIGroup-request"
  (cl:format cl:nil "int32[] args~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DIGroup-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DIGroup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DIGroup-request
    (cl:cons ':args (args msg))
))
;//! \htmlinclude DIGroup-response.msg.html

(cl:defclass <DIGroup-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DIGroup-response (<DIGroup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DIGroup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DIGroup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DIGroup-response> is deprecated: use dobot_bringup-srv:DIGroup-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DIGroup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DIGroup-response>) ostream)
  "Serializes a message object of type '<DIGroup-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DIGroup-response>) istream)
  "Deserializes a message object of type '<DIGroup-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DIGroup-response>)))
  "Returns string type for a service object of type '<DIGroup-response>"
  "dobot_bringup/DIGroupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DIGroup-response)))
  "Returns string type for a service object of type 'DIGroup-response"
  "dobot_bringup/DIGroupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DIGroup-response>)))
  "Returns md5sum for a message object of type '<DIGroup-response>"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DIGroup-response)))
  "Returns md5sum for a message object of type 'DIGroup-response"
  "808684a591f350916730d57d20e91134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DIGroup-response>)))
  "Returns full string definition for message of type '<DIGroup-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DIGroup-response)))
  "Returns full string definition for message of type 'DIGroup-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DIGroup-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DIGroup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DIGroup-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DIGroup)))
  'DIGroup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DIGroup)))
  'DIGroup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DIGroup)))
  "Returns string type for a service object of type '<DIGroup>"
  "dobot_bringup/DIGroup")