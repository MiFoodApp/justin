; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude GetSixForceData-request.msg.html

(cl:defclass <GetSixForceData-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSixForceData-request (<GetSixForceData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSixForceData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSixForceData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetSixForceData-request> is deprecated: use dobot_bringup-srv:GetSixForceData-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSixForceData-request>) ostream)
  "Serializes a message object of type '<GetSixForceData-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSixForceData-request>) istream)
  "Deserializes a message object of type '<GetSixForceData-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSixForceData-request>)))
  "Returns string type for a service object of type '<GetSixForceData-request>"
  "dobot_bringup/GetSixForceDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSixForceData-request)))
  "Returns string type for a service object of type 'GetSixForceData-request"
  "dobot_bringup/GetSixForceDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSixForceData-request>)))
  "Returns md5sum for a message object of type '<GetSixForceData-request>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSixForceData-request)))
  "Returns md5sum for a message object of type 'GetSixForceData-request"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSixForceData-request>)))
  "Returns full string definition for message of type '<GetSixForceData-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSixForceData-request)))
  "Returns full string definition for message of type 'GetSixForceData-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSixForceData-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSixForceData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSixForceData-request
))
;//! \htmlinclude GetSixForceData-response.msg.html

(cl:defclass <GetSixForceData-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass GetSixForceData-response (<GetSixForceData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSixForceData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSixForceData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<GetSixForceData-response> is deprecated: use dobot_bringup-srv:GetSixForceData-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GetSixForceData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSixForceData-response>) ostream)
  "Serializes a message object of type '<GetSixForceData-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSixForceData-response>) istream)
  "Deserializes a message object of type '<GetSixForceData-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSixForceData-response>)))
  "Returns string type for a service object of type '<GetSixForceData-response>"
  "dobot_bringup/GetSixForceDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSixForceData-response)))
  "Returns string type for a service object of type 'GetSixForceData-response"
  "dobot_bringup/GetSixForceDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSixForceData-response>)))
  "Returns md5sum for a message object of type '<GetSixForceData-response>"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSixForceData-response)))
  "Returns md5sum for a message object of type 'GetSixForceData-response"
  "ca16cfbd5443ad97f6cc7ffd6bb67292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSixForceData-response>)))
  "Returns full string definition for message of type '<GetSixForceData-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSixForceData-response)))
  "Returns full string definition for message of type 'GetSixForceData-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSixForceData-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSixForceData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSixForceData-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSixForceData)))
  'GetSixForceData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSixForceData)))
  'GetSixForceData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSixForceData)))
  "Returns string type for a service object of type '<GetSixForceData>"
  "dobot_bringup/GetSixForceData")