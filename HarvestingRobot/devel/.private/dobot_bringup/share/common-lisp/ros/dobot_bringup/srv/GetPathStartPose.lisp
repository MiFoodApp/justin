; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetPathStartPose-request.msg.html

(cl:defclass <GetPathStartPose-request> (roslisp-msg-protocol:ros-message)
  ((traceName
    :reader traceName
    :initarg :traceName
    :type cl:string
    :initform ""))
)

(cl:defclass GetPathStartPose-request (<GetPathStartPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathStartPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathStartPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetPathStartPose-request> is deprecated: use dobot_bringup-srv:GetPathStartPose-request instead.")))

(cl:ensure-generic-function 'traceName-val :lambda-list '(m))
(cl:defmethod traceName-val ((m <GetPathStartPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:traceName-val is deprecated.  Use dobot_bringup-srv:traceName instead.")
  (traceName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathStartPose-request>) ostream)
  "Serializes a message object of type '<GetPathStartPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'traceName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'traceName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathStartPose-request>) istream)
  "Deserializes a message object of type '<GetPathStartPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'traceName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'traceName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathStartPose-request>)))
  "Returns string type for a service object of type '<GetPathStartPose-request>"
  "dobot_bringup/GetPathStartPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathStartPose-request)))
  "Returns string type for a service object of type 'GetPathStartPose-request"
  "dobot_bringup/GetPathStartPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathStartPose-request>)))
  "Returns md5sum for a message object of type '<GetPathStartPose-request>"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathStartPose-request)))
  "Returns md5sum for a message object of type 'GetPathStartPose-request"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathStartPose-request>)))
  "Returns full string definition for message of type '<GetPathStartPose-request>"
  (cl:format cl:nil "string  traceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathStartPose-request)))
  "Returns full string definition for message of type 'GetPathStartPose-request"
  (cl:format cl:nil "string  traceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathStartPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'traceName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathStartPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathStartPose-request
    (cl:cons ':traceName (traceName msg))
))
;//! \htmlinclude GetPathStartPose-response.msg.html

(cl:defclass <GetPathStartPose-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetPathStartPose-response (<GetPathStartPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathStartPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathStartPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetPathStartPose-response> is deprecated: use dobot_bringup-srv:GetPathStartPose-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetPathStartPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathStartPose-response>) ostream)
  "Serializes a message object of type '<GetPathStartPose-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathStartPose-response>) istream)
  "Deserializes a message object of type '<GetPathStartPose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathStartPose-response>)))
  "Returns string type for a service object of type '<GetPathStartPose-response>"
  "dobot_bringup/GetPathStartPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathStartPose-response)))
  "Returns string type for a service object of type 'GetPathStartPose-response"
  "dobot_bringup/GetPathStartPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathStartPose-response>)))
  "Returns md5sum for a message object of type '<GetPathStartPose-response>"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathStartPose-response)))
  "Returns md5sum for a message object of type 'GetPathStartPose-response"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathStartPose-response>)))
  "Returns full string definition for message of type '<GetPathStartPose-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathStartPose-response)))
  "Returns full string definition for message of type 'GetPathStartPose-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathStartPose-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathStartPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathStartPose-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPathStartPose)))
  'GetPathStartPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPathStartPose)))
  'GetPathStartPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathStartPose)))
  "Returns string type for a service object of type '<GetPathStartPose>"
  "dobot_bringup/GetPathStartPose")