; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StartFCTrace-request.msg.html

(cl:defclass <StartFCTrace-request> (roslisp-msg-protocol:ros-message)
  ((trace_name
    :reader trace_name
    :initarg :trace_name
    :type cl:string
    :initform ""))
)

(cl:defclass StartFCTrace-request (<StartFCTrace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartFCTrace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartFCTrace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartFCTrace-request> is deprecated: use dobot_bringup-srv:StartFCTrace-request instead.")))

(cl:ensure-generic-function 'trace_name-val :lambda-list '(m))
(cl:defmethod trace_name-val ((m <StartFCTrace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:trace_name-val is deprecated.  Use dobot_bringup-srv:trace_name instead.")
  (trace_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartFCTrace-request>) ostream)
  "Serializes a message object of type '<StartFCTrace-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trace_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trace_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartFCTrace-request>) istream)
  "Deserializes a message object of type '<StartFCTrace-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trace_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trace_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartFCTrace-request>)))
  "Returns string type for a service object of type '<StartFCTrace-request>"
  "dobot_bringup/StartFCTraceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartFCTrace-request)))
  "Returns string type for a service object of type 'StartFCTrace-request"
  "dobot_bringup/StartFCTraceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartFCTrace-request>)))
  "Returns md5sum for a message object of type '<StartFCTrace-request>"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartFCTrace-request)))
  "Returns md5sum for a message object of type 'StartFCTrace-request"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartFCTrace-request>)))
  "Returns full string definition for message of type '<StartFCTrace-request>"
  (cl:format cl:nil "string trace_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartFCTrace-request)))
  "Returns full string definition for message of type 'StartFCTrace-request"
  (cl:format cl:nil "string trace_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartFCTrace-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'trace_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartFCTrace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartFCTrace-request
    (cl:cons ':trace_name (trace_name msg))
))
;//! \htmlinclude StartFCTrace-response.msg.html

(cl:defclass <StartFCTrace-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StartFCTrace-response (<StartFCTrace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartFCTrace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartFCTrace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartFCTrace-response> is deprecated: use dobot_bringup-srv:StartFCTrace-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StartFCTrace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartFCTrace-response>) ostream)
  "Serializes a message object of type '<StartFCTrace-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartFCTrace-response>) istream)
  "Deserializes a message object of type '<StartFCTrace-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartFCTrace-response>)))
  "Returns string type for a service object of type '<StartFCTrace-response>"
  "dobot_bringup/StartFCTraceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartFCTrace-response)))
  "Returns string type for a service object of type 'StartFCTrace-response"
  "dobot_bringup/StartFCTraceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartFCTrace-response>)))
  "Returns md5sum for a message object of type '<StartFCTrace-response>"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartFCTrace-response)))
  "Returns md5sum for a message object of type 'StartFCTrace-response"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartFCTrace-response>)))
  "Returns full string definition for message of type '<StartFCTrace-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartFCTrace-response)))
  "Returns full string definition for message of type 'StartFCTrace-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartFCTrace-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartFCTrace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartFCTrace-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartFCTrace)))
  'StartFCTrace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartFCTrace)))
  'StartFCTrace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartFCTrace)))
  "Returns string type for a service object of type '<StartFCTrace>"
  "dobot_bringup/StartFCTrace")