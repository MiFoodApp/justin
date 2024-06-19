; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetTraceStartPose-request.msg.html

(cl:defclass <GetTraceStartPose-request> (roslisp-msg-protocol:ros-message)
  ((traceName
    :reader traceName
    :initarg :traceName
    :type cl:string
    :initform ""))
)

(cl:defclass GetTraceStartPose-request (<GetTraceStartPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTraceStartPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTraceStartPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetTraceStartPose-request> is deprecated: use dobot_bringup-srv:GetTraceStartPose-request instead.")))

(cl:ensure-generic-function 'traceName-val :lambda-list '(m))
(cl:defmethod traceName-val ((m <GetTraceStartPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:traceName-val is deprecated.  Use dobot_bringup-srv:traceName instead.")
  (traceName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTraceStartPose-request>) ostream)
  "Serializes a message object of type '<GetTraceStartPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'traceName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'traceName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTraceStartPose-request>) istream)
  "Deserializes a message object of type '<GetTraceStartPose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTraceStartPose-request>)))
  "Returns string type for a service object of type '<GetTraceStartPose-request>"
  "dobot_bringup/GetTraceStartPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTraceStartPose-request)))
  "Returns string type for a service object of type 'GetTraceStartPose-request"
  "dobot_bringup/GetTraceStartPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTraceStartPose-request>)))
  "Returns md5sum for a message object of type '<GetTraceStartPose-request>"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTraceStartPose-request)))
  "Returns md5sum for a message object of type 'GetTraceStartPose-request"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTraceStartPose-request>)))
  "Returns full string definition for message of type '<GetTraceStartPose-request>"
  (cl:format cl:nil "string  traceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTraceStartPose-request)))
  "Returns full string definition for message of type 'GetTraceStartPose-request"
  (cl:format cl:nil "string  traceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTraceStartPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'traceName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTraceStartPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTraceStartPose-request
    (cl:cons ':traceName (traceName msg))
))
;//! \htmlinclude GetTraceStartPose-response.msg.html

(cl:defclass <GetTraceStartPose-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetTraceStartPose-response (<GetTraceStartPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTraceStartPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTraceStartPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetTraceStartPose-response> is deprecated: use dobot_bringup-srv:GetTraceStartPose-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetTraceStartPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTraceStartPose-response>) ostream)
  "Serializes a message object of type '<GetTraceStartPose-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTraceStartPose-response>) istream)
  "Deserializes a message object of type '<GetTraceStartPose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTraceStartPose-response>)))
  "Returns string type for a service object of type '<GetTraceStartPose-response>"
  "dobot_bringup/GetTraceStartPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTraceStartPose-response)))
  "Returns string type for a service object of type 'GetTraceStartPose-response"
  "dobot_bringup/GetTraceStartPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTraceStartPose-response>)))
  "Returns md5sum for a message object of type '<GetTraceStartPose-response>"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTraceStartPose-response)))
  "Returns md5sum for a message object of type 'GetTraceStartPose-response"
  "82df6582f8dcb92a8fcd749010d9e909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTraceStartPose-response>)))
  "Returns full string definition for message of type '<GetTraceStartPose-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTraceStartPose-response)))
  "Returns full string definition for message of type 'GetTraceStartPose-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTraceStartPose-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTraceStartPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTraceStartPose-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTraceStartPose)))
  'GetTraceStartPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTraceStartPose)))
  'GetTraceStartPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTraceStartPose)))
  "Returns string type for a service object of type '<GetTraceStartPose>"
  "dobot_bringup/GetTraceStartPose")