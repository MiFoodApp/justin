; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude RunScript-request.msg.html

(cl:defclass <RunScript-request> (roslisp-msg-protocol:ros-message)
  ((projectName
    :reader projectName
    :initarg :projectName
    :type cl:string
    :initform ""))
)

(cl:defclass RunScript-request (<RunScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RunScript-request> is deprecated: use dobot_bringup-srv:RunScript-request instead.")))

(cl:ensure-generic-function 'projectName-val :lambda-list '(m))
(cl:defmethod projectName-val ((m <RunScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:projectName-val is deprecated.  Use dobot_bringup-srv:projectName instead.")
  (projectName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunScript-request>) ostream)
  "Serializes a message object of type '<RunScript-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'projectName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'projectName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunScript-request>) istream)
  "Deserializes a message object of type '<RunScript-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'projectName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'projectName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunScript-request>)))
  "Returns string type for a service object of type '<RunScript-request>"
  "dobot_bringup/RunScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunScript-request)))
  "Returns string type for a service object of type 'RunScript-request"
  "dobot_bringup/RunScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunScript-request>)))
  "Returns md5sum for a message object of type '<RunScript-request>"
  "7a897c62a8cb97cf0bd8a288103abd8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunScript-request)))
  "Returns md5sum for a message object of type 'RunScript-request"
  "7a897c62a8cb97cf0bd8a288103abd8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunScript-request>)))
  "Returns full string definition for message of type '<RunScript-request>"
  (cl:format cl:nil "string projectName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunScript-request)))
  "Returns full string definition for message of type 'RunScript-request"
  (cl:format cl:nil "string projectName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunScript-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'projectName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunScript-request
    (cl:cons ':projectName (projectName msg))
))
;//! \htmlinclude RunScript-response.msg.html

(cl:defclass <RunScript-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass RunScript-response (<RunScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<RunScript-response> is deprecated: use dobot_bringup-srv:RunScript-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <RunScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunScript-response>) ostream)
  "Serializes a message object of type '<RunScript-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunScript-response>) istream)
  "Deserializes a message object of type '<RunScript-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunScript-response>)))
  "Returns string type for a service object of type '<RunScript-response>"
  "dobot_bringup/RunScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunScript-response)))
  "Returns string type for a service object of type 'RunScript-response"
  "dobot_bringup/RunScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunScript-response>)))
  "Returns md5sum for a message object of type '<RunScript-response>"
  "7a897c62a8cb97cf0bd8a288103abd8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunScript-response)))
  "Returns md5sum for a message object of type 'RunScript-response"
  "7a897c62a8cb97cf0bd8a288103abd8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunScript-response>)))
  "Returns full string definition for message of type '<RunScript-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunScript-response)))
  "Returns full string definition for message of type 'RunScript-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunScript-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunScript-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunScript)))
  'RunScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunScript)))
  'RunScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunScript)))
  "Returns string type for a service object of type '<RunScript>"
  "dobot_bringup/RunScript")