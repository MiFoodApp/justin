; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StartTrace-request.msg.html

(cl:defclass <StartTrace-request> (roslisp-msg-protocol:ros-message)
  ((trace_name
    :reader trace_name
    :initarg :trace_name
    :type cl:string
    :initform ""))
)

(cl:defclass StartTrace-request (<StartTrace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTrace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTrace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartTrace-request> is deprecated: use dobot_bringup-srv:StartTrace-request instead.")))

(cl:ensure-generic-function 'trace_name-val :lambda-list '(m))
(cl:defmethod trace_name-val ((m <StartTrace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:trace_name-val is deprecated.  Use dobot_bringup-srv:trace_name instead.")
  (trace_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTrace-request>) ostream)
  "Serializes a message object of type '<StartTrace-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trace_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trace_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTrace-request>) istream)
  "Deserializes a message object of type '<StartTrace-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTrace-request>)))
  "Returns string type for a service object of type '<StartTrace-request>"
  "dobot_bringup/StartTraceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrace-request)))
  "Returns string type for a service object of type 'StartTrace-request"
  "dobot_bringup/StartTraceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTrace-request>)))
  "Returns md5sum for a message object of type '<StartTrace-request>"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTrace-request)))
  "Returns md5sum for a message object of type 'StartTrace-request"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTrace-request>)))
  "Returns full string definition for message of type '<StartTrace-request>"
  (cl:format cl:nil "string trace_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTrace-request)))
  "Returns full string definition for message of type 'StartTrace-request"
  (cl:format cl:nil "string trace_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTrace-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'trace_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTrace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTrace-request
    (cl:cons ':trace_name (trace_name msg))
))
;//! \htmlinclude StartTrace-response.msg.html

(cl:defclass <StartTrace-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StartTrace-response (<StartTrace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTrace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTrace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartTrace-response> is deprecated: use dobot_bringup-srv:StartTrace-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StartTrace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTrace-response>) ostream)
  "Serializes a message object of type '<StartTrace-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTrace-response>) istream)
  "Deserializes a message object of type '<StartTrace-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTrace-response>)))
  "Returns string type for a service object of type '<StartTrace-response>"
  "dobot_bringup/StartTraceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrace-response)))
  "Returns string type for a service object of type 'StartTrace-response"
  "dobot_bringup/StartTraceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTrace-response>)))
  "Returns md5sum for a message object of type '<StartTrace-response>"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTrace-response)))
  "Returns md5sum for a message object of type 'StartTrace-response"
  "7873158229ecddf2dbfeddf339853b82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTrace-response>)))
  "Returns full string definition for message of type '<StartTrace-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTrace-response)))
  "Returns full string definition for message of type 'StartTrace-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTrace-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTrace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTrace-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartTrace)))
  'StartTrace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartTrace)))
  'StartTrace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrace)))
  "Returns string type for a service object of type '<StartTrace>"
  "dobot_bringup/StartTrace")