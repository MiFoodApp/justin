; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude BrakeControl-request.msg.html

(cl:defclass <BrakeControl-request> (roslisp-msg-protocol:ros-message)
  ((axisID
    :reader axisID
    :initarg :axisID
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass BrakeControl-request (<BrakeControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<BrakeControl-request> is deprecated: use dobot_bringup-srv:BrakeControl-request instead.")))

(cl:ensure-generic-function 'axisID-val :lambda-list '(m))
(cl:defmethod axisID-val ((m <BrakeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:axisID-val is deprecated.  Use dobot_bringup-srv:axisID instead.")
  (axisID m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:value-val is deprecated.  Use dobot_bringup-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeControl-request>) ostream)
  "Serializes a message object of type '<BrakeControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'axisID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeControl-request>) istream)
  "Deserializes a message object of type '<BrakeControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axisID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeControl-request>)))
  "Returns string type for a service object of type '<BrakeControl-request>"
  "dobot_bringup/BrakeControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeControl-request)))
  "Returns string type for a service object of type 'BrakeControl-request"
  "dobot_bringup/BrakeControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeControl-request>)))
  "Returns md5sum for a message object of type '<BrakeControl-request>"
  "2600ab19caac21b4314a6daf413b16b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeControl-request)))
  "Returns md5sum for a message object of type 'BrakeControl-request"
  "2600ab19caac21b4314a6daf413b16b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeControl-request>)))
  "Returns full string definition for message of type '<BrakeControl-request>"
  (cl:format cl:nil "int32 axisID~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeControl-request)))
  "Returns full string definition for message of type 'BrakeControl-request"
  (cl:format cl:nil "int32 axisID~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeControl-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeControl-request
    (cl:cons ':axisID (axisID msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude BrakeControl-response.msg.html

(cl:defclass <BrakeControl-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass BrakeControl-response (<BrakeControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<BrakeControl-response> is deprecated: use dobot_bringup-srv:BrakeControl-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <BrakeControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeControl-response>) ostream)
  "Serializes a message object of type '<BrakeControl-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeControl-response>) istream)
  "Deserializes a message object of type '<BrakeControl-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeControl-response>)))
  "Returns string type for a service object of type '<BrakeControl-response>"
  "dobot_bringup/BrakeControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeControl-response)))
  "Returns string type for a service object of type 'BrakeControl-response"
  "dobot_bringup/BrakeControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeControl-response>)))
  "Returns md5sum for a message object of type '<BrakeControl-response>"
  "2600ab19caac21b4314a6daf413b16b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeControl-response)))
  "Returns md5sum for a message object of type 'BrakeControl-response"
  "2600ab19caac21b4314a6daf413b16b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeControl-response>)))
  "Returns full string definition for message of type '<BrakeControl-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeControl-response)))
  "Returns full string definition for message of type 'BrakeControl-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeControl-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeControl-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BrakeControl)))
  'BrakeControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BrakeControl)))
  'BrakeControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeControl)))
  "Returns string type for a service object of type '<BrakeControl>"
  "dobot_bringup/BrakeControl")