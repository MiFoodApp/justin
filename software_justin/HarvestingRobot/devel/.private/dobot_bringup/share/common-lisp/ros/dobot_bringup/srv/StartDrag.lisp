; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude StartDrag-request.msg.html

(cl:defclass <StartDrag-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartDrag-request (<StartDrag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartDrag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartDrag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartDrag-request> is deprecated: use dobot_bringup-srv:StartDrag-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartDrag-request>) ostream)
  "Serializes a message object of type '<StartDrag-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartDrag-request>) istream)
  "Deserializes a message object of type '<StartDrag-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartDrag-request>)))
  "Returns string type for a service object of type '<StartDrag-request>"
  "dobot_bringup/StartDragRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartDrag-request)))
  "Returns string type for a service object of type 'StartDrag-request"
  "dobot_bringup/StartDragRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartDrag-request>)))
  "Returns md5sum for a message object of type '<StartDrag-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartDrag-request)))
  "Returns md5sum for a message object of type 'StartDrag-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartDrag-request>)))
  "Returns full string definition for message of type '<StartDrag-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartDrag-request)))
  "Returns full string definition for message of type 'StartDrag-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartDrag-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartDrag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartDrag-request
))
;//! \htmlinclude StartDrag-response.msg.html

(cl:defclass <StartDrag-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass StartDrag-response (<StartDrag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartDrag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartDrag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<StartDrag-response> is deprecated: use dobot_bringup-srv:StartDrag-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <StartDrag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartDrag-response>) ostream)
  "Serializes a message object of type '<StartDrag-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartDrag-response>) istream)
  "Deserializes a message object of type '<StartDrag-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartDrag-response>)))
  "Returns string type for a service object of type '<StartDrag-response>"
  "dobot_bringup/StartDragResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartDrag-response)))
  "Returns string type for a service object of type 'StartDrag-response"
  "dobot_bringup/StartDragResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartDrag-response>)))
  "Returns md5sum for a message object of type '<StartDrag-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartDrag-response)))
  "Returns md5sum for a message object of type 'StartDrag-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartDrag-response>)))
  "Returns full string definition for message of type '<StartDrag-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartDrag-response)))
  "Returns full string definition for message of type 'StartDrag-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartDrag-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartDrag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartDrag-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartDrag)))
  'StartDrag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartDrag)))
  'StartDrag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartDrag)))
  "Returns string type for a service object of type '<StartDrag>"
  "dobot_bringup/StartDrag")