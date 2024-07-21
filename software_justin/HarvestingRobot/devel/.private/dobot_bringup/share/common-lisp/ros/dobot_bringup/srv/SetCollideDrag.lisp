; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetCollideDrag-request.msg.html

(cl:defclass <SetCollideDrag-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCollideDrag-request (<SetCollideDrag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollideDrag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollideDrag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetCollideDrag-request> is deprecated: use dobot_bringup-srv:SetCollideDrag-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetCollideDrag-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollideDrag-request>) ostream)
  "Serializes a message object of type '<SetCollideDrag-request>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollideDrag-request>) istream)
  "Deserializes a message object of type '<SetCollideDrag-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollideDrag-request>)))
  "Returns string type for a service object of type '<SetCollideDrag-request>"
  "dobot_bringup/SetCollideDragRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollideDrag-request)))
  "Returns string type for a service object of type 'SetCollideDrag-request"
  "dobot_bringup/SetCollideDragRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollideDrag-request>)))
  "Returns md5sum for a message object of type '<SetCollideDrag-request>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollideDrag-request)))
  "Returns md5sum for a message object of type 'SetCollideDrag-request"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollideDrag-request>)))
  "Returns full string definition for message of type '<SetCollideDrag-request>"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollideDrag-request)))
  "Returns full string definition for message of type 'SetCollideDrag-request"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollideDrag-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollideDrag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollideDrag-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude SetCollideDrag-response.msg.html

(cl:defclass <SetCollideDrag-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCollideDrag-response (<SetCollideDrag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollideDrag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollideDrag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetCollideDrag-response> is deprecated: use dobot_bringup-srv:SetCollideDrag-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetCollideDrag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollideDrag-response>) ostream)
  "Serializes a message object of type '<SetCollideDrag-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollideDrag-response>) istream)
  "Deserializes a message object of type '<SetCollideDrag-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollideDrag-response>)))
  "Returns string type for a service object of type '<SetCollideDrag-response>"
  "dobot_bringup/SetCollideDragResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollideDrag-response)))
  "Returns string type for a service object of type 'SetCollideDrag-response"
  "dobot_bringup/SetCollideDragResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollideDrag-response>)))
  "Returns md5sum for a message object of type '<SetCollideDrag-response>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollideDrag-response)))
  "Returns md5sum for a message object of type 'SetCollideDrag-response"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollideDrag-response>)))
  "Returns full string definition for message of type '<SetCollideDrag-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollideDrag-response)))
  "Returns full string definition for message of type 'SetCollideDrag-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollideDrag-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollideDrag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollideDrag-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCollideDrag)))
  'SetCollideDrag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCollideDrag)))
  'SetCollideDrag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollideDrag)))
  "Returns string type for a service object of type '<SetCollideDrag>"
  "dobot_bringup/SetCollideDrag")