; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetErrorID-request.msg.html

(cl:defclass <GetErrorID-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetErrorID-request (<GetErrorID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetErrorID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetErrorID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetErrorID-request> is deprecated: use dobot_bringup-srv:GetErrorID-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetErrorID-request>) ostream)
  "Serializes a message object of type '<GetErrorID-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetErrorID-request>) istream)
  "Deserializes a message object of type '<GetErrorID-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetErrorID-request>)))
  "Returns string type for a service object of type '<GetErrorID-request>"
  "dobot_bringup/GetErrorIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetErrorID-request)))
  "Returns string type for a service object of type 'GetErrorID-request"
  "dobot_bringup/GetErrorIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetErrorID-request>)))
  "Returns md5sum for a message object of type '<GetErrorID-request>"
  "21732a31ce08e00841e34036c6b93272")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetErrorID-request)))
  "Returns md5sum for a message object of type 'GetErrorID-request"
  "21732a31ce08e00841e34036c6b93272")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetErrorID-request>)))
  "Returns full string definition for message of type '<GetErrorID-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetErrorID-request)))
  "Returns full string definition for message of type 'GetErrorID-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetErrorID-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetErrorID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetErrorID-request
))
;//! \htmlinclude GetErrorID-response.msg.html

(cl:defclass <GetErrorID-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0)
   (errorID
    :reader errorID
    :initarg :errorID
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetErrorID-response (<GetErrorID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetErrorID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetErrorID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetErrorID-response> is deprecated: use dobot_bringup-srv:GetErrorID-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetErrorID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))

(cl:ensure-generic-function 'errorID-val :lambda-list '(m))
(cl:defmethod errorID-val ((m <GetErrorID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:errorID-val is deprecated.  Use dobot_bringup-srv:errorID instead.")
  (errorID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetErrorID-response>) ostream)
  "Serializes a message object of type '<GetErrorID-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errorID))))
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
   (cl:slot-value msg 'errorID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetErrorID-response>) istream)
  "Deserializes a message object of type '<GetErrorID-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errorID) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errorID)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetErrorID-response>)))
  "Returns string type for a service object of type '<GetErrorID-response>"
  "dobot_bringup/GetErrorIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetErrorID-response)))
  "Returns string type for a service object of type 'GetErrorID-response"
  "dobot_bringup/GetErrorIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetErrorID-response>)))
  "Returns md5sum for a message object of type '<GetErrorID-response>"
  "21732a31ce08e00841e34036c6b93272")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetErrorID-response)))
  "Returns md5sum for a message object of type 'GetErrorID-response"
  "21732a31ce08e00841e34036c6b93272")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetErrorID-response>)))
  "Returns full string definition for message of type '<GetErrorID-response>"
  (cl:format cl:nil "int32 res~%int32[] errorID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetErrorID-response)))
  "Returns full string definition for message of type 'GetErrorID-response"
  (cl:format cl:nil "int32 res~%int32[] errorID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetErrorID-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errorID) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetErrorID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetErrorID-response
    (cl:cons ':res (res msg))
    (cl:cons ':errorID (errorID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetErrorID)))
  'GetErrorID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetErrorID)))
  'GetErrorID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetErrorID)))
  "Returns string type for a service object of type '<GetErrorID>"
  "dobot_bringup/GetErrorID")