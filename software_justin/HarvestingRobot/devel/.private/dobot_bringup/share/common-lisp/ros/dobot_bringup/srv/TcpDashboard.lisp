; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude TcpDashboard-request.msg.html

(cl:defclass <TcpDashboard-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass TcpDashboard-request (<TcpDashboard-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TcpDashboard-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TcpDashboard-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TcpDashboard-request> is deprecated: use dobot_bringup-srv:TcpDashboard-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <TcpDashboard-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:command-val is deprecated.  Use dobot_bringup-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TcpDashboard-request>) ostream)
  "Serializes a message object of type '<TcpDashboard-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TcpDashboard-request>) istream)
  "Deserializes a message object of type '<TcpDashboard-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TcpDashboard-request>)))
  "Returns string type for a service object of type '<TcpDashboard-request>"
  "dobot_bringup/TcpDashboardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpDashboard-request)))
  "Returns string type for a service object of type 'TcpDashboard-request"
  "dobot_bringup/TcpDashboardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TcpDashboard-request>)))
  "Returns md5sum for a message object of type '<TcpDashboard-request>"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TcpDashboard-request)))
  "Returns md5sum for a message object of type 'TcpDashboard-request"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TcpDashboard-request>)))
  "Returns full string definition for message of type '<TcpDashboard-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TcpDashboard-request)))
  "Returns full string definition for message of type 'TcpDashboard-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TcpDashboard-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TcpDashboard-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TcpDashboard-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude TcpDashboard-response.msg.html

(cl:defclass <TcpDashboard-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass TcpDashboard-response (<TcpDashboard-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TcpDashboard-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TcpDashboard-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<TcpDashboard-response> is deprecated: use dobot_bringup-srv:TcpDashboard-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TcpDashboard-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:result-val is deprecated.  Use dobot_bringup-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TcpDashboard-response>) ostream)
  "Serializes a message object of type '<TcpDashboard-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TcpDashboard-response>) istream)
  "Deserializes a message object of type '<TcpDashboard-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TcpDashboard-response>)))
  "Returns string type for a service object of type '<TcpDashboard-response>"
  "dobot_bringup/TcpDashboardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpDashboard-response)))
  "Returns string type for a service object of type 'TcpDashboard-response"
  "dobot_bringup/TcpDashboardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TcpDashboard-response>)))
  "Returns md5sum for a message object of type '<TcpDashboard-response>"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TcpDashboard-response)))
  "Returns md5sum for a message object of type 'TcpDashboard-response"
  "e62ac06cf7c221e8f3746d0b18c22a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TcpDashboard-response>)))
  "Returns full string definition for message of type '<TcpDashboard-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TcpDashboard-response)))
  "Returns full string definition for message of type 'TcpDashboard-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TcpDashboard-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TcpDashboard-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TcpDashboard-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TcpDashboard)))
  'TcpDashboard-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TcpDashboard)))
  'TcpDashboard-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TcpDashboard)))
  "Returns string type for a service object of type '<TcpDashboard>"
  "dobot_bringup/TcpDashboard")