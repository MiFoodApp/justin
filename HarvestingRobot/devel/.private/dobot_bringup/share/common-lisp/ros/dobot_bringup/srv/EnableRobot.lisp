; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude EnableRobot-request.msg.html

(cl:defclass <EnableRobot-request> (roslisp-msg-protocol:ros-message)
  ((args
    :reader args
    :initarg :args
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EnableRobot-request (<EnableRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<EnableRobot-request> is deprecated: use dobot_bringup-srv:EnableRobot-request instead.")))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <EnableRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:args-val is deprecated.  Use dobot_bringup-srv:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableRobot-request>) ostream)
  "Serializes a message object of type '<EnableRobot-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableRobot-request>) istream)
  "Deserializes a message object of type '<EnableRobot-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableRobot-request>)))
  "Returns string type for a service object of type '<EnableRobot-request>"
  "dobot_bringup/EnableRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableRobot-request)))
  "Returns string type for a service object of type 'EnableRobot-request"
  "dobot_bringup/EnableRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableRobot-request>)))
  "Returns md5sum for a message object of type '<EnableRobot-request>"
  "c8c32a9a172a18b46989544c88798d15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableRobot-request)))
  "Returns md5sum for a message object of type 'EnableRobot-request"
  "c8c32a9a172a18b46989544c88798d15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableRobot-request>)))
  "Returns full string definition for message of type '<EnableRobot-request>"
  (cl:format cl:nil "float64[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableRobot-request)))
  "Returns full string definition for message of type 'EnableRobot-request"
  (cl:format cl:nil "float64[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableRobot-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableRobot-request
    (cl:cons ':args (args msg))
))
;//! \htmlinclude EnableRobot-response.msg.html

(cl:defclass <EnableRobot-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass EnableRobot-response (<EnableRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<EnableRobot-response> is deprecated: use dobot_bringup-srv:EnableRobot-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <EnableRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableRobot-response>) ostream)
  "Serializes a message object of type '<EnableRobot-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableRobot-response>) istream)
  "Deserializes a message object of type '<EnableRobot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableRobot-response>)))
  "Returns string type for a service object of type '<EnableRobot-response>"
  "dobot_bringup/EnableRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableRobot-response)))
  "Returns string type for a service object of type 'EnableRobot-response"
  "dobot_bringup/EnableRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableRobot-response>)))
  "Returns md5sum for a message object of type '<EnableRobot-response>"
  "c8c32a9a172a18b46989544c88798d15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableRobot-response)))
  "Returns md5sum for a message object of type 'EnableRobot-response"
  "c8c32a9a172a18b46989544c88798d15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableRobot-response>)))
  "Returns full string definition for message of type '<EnableRobot-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableRobot-response)))
  "Returns full string definition for message of type 'EnableRobot-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableRobot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableRobot-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableRobot)))
  'EnableRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableRobot)))
  'EnableRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableRobot)))
  "Returns string type for a service object of type '<EnableRobot>"
  "dobot_bringup/EnableRobot")