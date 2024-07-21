; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetAngle-request.msg.html

(cl:defclass <GetAngle-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAngle-request (<GetAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetAngle-request> is deprecated: use dobot_bringup-srv:GetAngle-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAngle-request>) ostream)
  "Serializes a message object of type '<GetAngle-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAngle-request>) istream)
  "Deserializes a message object of type '<GetAngle-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAngle-request>)))
  "Returns string type for a service object of type '<GetAngle-request>"
  "dobot_bringup/GetAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAngle-request)))
  "Returns string type for a service object of type 'GetAngle-request"
  "dobot_bringup/GetAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAngle-request>)))
  "Returns md5sum for a message object of type '<GetAngle-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAngle-request)))
  "Returns md5sum for a message object of type 'GetAngle-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAngle-request>)))
  "Returns full string definition for message of type '<GetAngle-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAngle-request)))
  "Returns full string definition for message of type 'GetAngle-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAngle-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAngle-request
))
;//! \htmlinclude GetAngle-response.msg.html

(cl:defclass <GetAngle-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetAngle-response (<GetAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetAngle-response> is deprecated: use dobot_bringup-srv:GetAngle-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetAngle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAngle-response>) ostream)
  "Serializes a message object of type '<GetAngle-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAngle-response>) istream)
  "Deserializes a message object of type '<GetAngle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAngle-response>)))
  "Returns string type for a service object of type '<GetAngle-response>"
  "dobot_bringup/GetAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAngle-response)))
  "Returns string type for a service object of type 'GetAngle-response"
  "dobot_bringup/GetAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAngle-response>)))
  "Returns md5sum for a message object of type '<GetAngle-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAngle-response)))
  "Returns md5sum for a message object of type 'GetAngle-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAngle-response>)))
  "Returns full string definition for message of type '<GetAngle-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAngle-response)))
  "Returns full string definition for message of type 'GetAngle-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAngle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAngle-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAngle)))
  'GetAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAngle)))
  'GetAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAngle)))
  "Returns string type for a service object of type '<GetAngle>"
  "dobot_bringup/GetAngle")