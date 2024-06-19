; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude Continues-request.msg.html

(cl:defclass <Continues-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Continues-request (<Continues-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Continues-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Continues-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Continues-request> is deprecated: use dobot_bringup-srv:Continues-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Continues-request>) ostream)
  "Serializes a message object of type '<Continues-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Continues-request>) istream)
  "Deserializes a message object of type '<Continues-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Continues-request>)))
  "Returns string type for a service object of type '<Continues-request>"
  "dobot_bringup/ContinuesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Continues-request)))
  "Returns string type for a service object of type 'Continues-request"
  "dobot_bringup/ContinuesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Continues-request>)))
  "Returns md5sum for a message object of type '<Continues-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Continues-request)))
  "Returns md5sum for a message object of type 'Continues-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Continues-request>)))
  "Returns full string definition for message of type '<Continues-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Continues-request)))
  "Returns full string definition for message of type 'Continues-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Continues-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Continues-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Continues-request
))
;//! \htmlinclude Continues-response.msg.html

(cl:defclass <Continues-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass Continues-response (<Continues-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Continues-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Continues-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<Continues-response> is deprecated: use dobot_bringup-srv:Continues-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Continues-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Continues-response>) ostream)
  "Serializes a message object of type '<Continues-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Continues-response>) istream)
  "Deserializes a message object of type '<Continues-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Continues-response>)))
  "Returns string type for a service object of type '<Continues-response>"
  "dobot_bringup/ContinuesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Continues-response)))
  "Returns string type for a service object of type 'Continues-response"
  "dobot_bringup/ContinuesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Continues-response>)))
  "Returns md5sum for a message object of type '<Continues-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Continues-response)))
  "Returns md5sum for a message object of type 'Continues-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Continues-response>)))
  "Returns full string definition for message of type '<Continues-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Continues-response)))
  "Returns full string definition for message of type 'Continues-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Continues-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Continues-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Continues-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Continues)))
  'Continues-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Continues)))
  'Continues-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Continues)))
  "Returns string type for a service object of type '<Continues>"
  "dobot_bringup/Continues")