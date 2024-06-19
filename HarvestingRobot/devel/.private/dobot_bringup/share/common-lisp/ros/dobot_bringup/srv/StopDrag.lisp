; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StopDrag-request.msg.html

(cl:defclass <StopDrag-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopDrag-request (<StopDrag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopDrag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopDrag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopDrag-request> is deprecated: use dobot_bringup-srv:StopDrag-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopDrag-request>) ostream)
  "Serializes a message object of type '<StopDrag-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopDrag-request>) istream)
  "Deserializes a message object of type '<StopDrag-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopDrag-request>)))
  "Returns string type for a service object of type '<StopDrag-request>"
  "dobot_bringup/StopDragRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDrag-request)))
  "Returns string type for a service object of type 'StopDrag-request"
  "dobot_bringup/StopDragRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopDrag-request>)))
  "Returns md5sum for a message object of type '<StopDrag-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopDrag-request)))
  "Returns md5sum for a message object of type 'StopDrag-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopDrag-request>)))
  "Returns full string definition for message of type '<StopDrag-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopDrag-request)))
  "Returns full string definition for message of type 'StopDrag-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopDrag-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopDrag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopDrag-request
))
;//! \htmlinclude StopDrag-response.msg.html

(cl:defclass <StopDrag-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StopDrag-response (<StopDrag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopDrag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopDrag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StopDrag-response> is deprecated: use dobot_bringup-srv:StopDrag-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StopDrag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopDrag-response>) ostream)
  "Serializes a message object of type '<StopDrag-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopDrag-response>) istream)
  "Deserializes a message object of type '<StopDrag-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopDrag-response>)))
  "Returns string type for a service object of type '<StopDrag-response>"
  "dobot_bringup/StopDragResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDrag-response)))
  "Returns string type for a service object of type 'StopDrag-response"
  "dobot_bringup/StopDragResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopDrag-response>)))
  "Returns md5sum for a message object of type '<StopDrag-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopDrag-response)))
  "Returns md5sum for a message object of type 'StopDrag-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopDrag-response>)))
  "Returns full string definition for message of type '<StopDrag-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopDrag-response)))
  "Returns full string definition for message of type 'StopDrag-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopDrag-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopDrag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopDrag-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopDrag)))
  'StopDrag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopDrag)))
  'StopDrag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDrag)))
  "Returns string type for a service object of type '<StopDrag>"
  "dobot_bringup/StopDrag")