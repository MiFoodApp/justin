; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude DigitalOutputs-request.msg.html

(cl:defclass <DigitalOutputs-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DigitalOutputs-request (<DigitalOutputs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutputs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutputs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DigitalOutputs-request> is deprecated: use dobot_bringup-srv:DigitalOutputs-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <DigitalOutputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:index-val is deprecated.  Use dobot_bringup-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DigitalOutputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutputs-request>) ostream)
  "Serializes a message object of type '<DigitalOutputs-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutputs-request>) istream)
  "Deserializes a message object of type '<DigitalOutputs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutputs-request>)))
  "Returns string type for a service object of type '<DigitalOutputs-request>"
  "dobot_bringup/DigitalOutputsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputs-request)))
  "Returns string type for a service object of type 'DigitalOutputs-request"
  "dobot_bringup/DigitalOutputsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutputs-request>)))
  "Returns md5sum for a message object of type '<DigitalOutputs-request>"
  "66f73dbfd704b73f44395c00f1cff751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutputs-request)))
  "Returns md5sum for a message object of type 'DigitalOutputs-request"
  "66f73dbfd704b73f44395c00f1cff751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutputs-request>)))
  "Returns full string definition for message of type '<DigitalOutputs-request>"
  (cl:format cl:nil "# index --> 0 - 9~%~%int32 index~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutputs-request)))
  "Returns full string definition for message of type 'DigitalOutputs-request"
  (cl:format cl:nil "# index --> 0 - 9~%~%int32 index~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutputs-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutputs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutputs-request
    (cl:cons ':index (index msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude DigitalOutputs-response.msg.html

(cl:defclass <DigitalOutputs-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass DigitalOutputs-response (<DigitalOutputs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutputs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutputs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<DigitalOutputs-response> is deprecated: use dobot_bringup-srv:DigitalOutputs-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <DigitalOutputs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutputs-response>) ostream)
  "Serializes a message object of type '<DigitalOutputs-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutputs-response>) istream)
  "Deserializes a message object of type '<DigitalOutputs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutputs-response>)))
  "Returns string type for a service object of type '<DigitalOutputs-response>"
  "dobot_bringup/DigitalOutputsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputs-response)))
  "Returns string type for a service object of type 'DigitalOutputs-response"
  "dobot_bringup/DigitalOutputsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutputs-response>)))
  "Returns md5sum for a message object of type '<DigitalOutputs-response>"
  "66f73dbfd704b73f44395c00f1cff751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutputs-response)))
  "Returns md5sum for a message object of type 'DigitalOutputs-response"
  "66f73dbfd704b73f44395c00f1cff751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutputs-response>)))
  "Returns full string definition for message of type '<DigitalOutputs-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutputs-response)))
  "Returns full string definition for message of type 'DigitalOutputs-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutputs-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutputs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutputs-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DigitalOutputs)))
  'DigitalOutputs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DigitalOutputs)))
  'DigitalOutputs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputs)))
  "Returns string type for a service object of type '<DigitalOutputs>"
  "dobot_bringup/DigitalOutputs")