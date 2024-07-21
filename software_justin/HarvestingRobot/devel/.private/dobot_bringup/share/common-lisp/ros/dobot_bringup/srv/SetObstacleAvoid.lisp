; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetObstacleAvoid-request.msg.html

(cl:defclass <SetObstacleAvoid-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SetObstacleAvoid-request (<SetObstacleAvoid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacleAvoid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacleAvoid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetObstacleAvoid-request> is deprecated: use dobot_bringup-srv:SetObstacleAvoid-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetObstacleAvoid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:status-val is deprecated.  Use dobot_bringup-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacleAvoid-request>) ostream)
  "Serializes a message object of type '<SetObstacleAvoid-request>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacleAvoid-request>) istream)
  "Deserializes a message object of type '<SetObstacleAvoid-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacleAvoid-request>)))
  "Returns string type for a service object of type '<SetObstacleAvoid-request>"
  "dobot_bringup/SetObstacleAvoidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleAvoid-request)))
  "Returns string type for a service object of type 'SetObstacleAvoid-request"
  "dobot_bringup/SetObstacleAvoidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacleAvoid-request>)))
  "Returns md5sum for a message object of type '<SetObstacleAvoid-request>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacleAvoid-request)))
  "Returns md5sum for a message object of type 'SetObstacleAvoid-request"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacleAvoid-request>)))
  "Returns full string definition for message of type '<SetObstacleAvoid-request>"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacleAvoid-request)))
  "Returns full string definition for message of type 'SetObstacleAvoid-request"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacleAvoid-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacleAvoid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacleAvoid-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude SetObstacleAvoid-response.msg.html

(cl:defclass <SetObstacleAvoid-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetObstacleAvoid-response (<SetObstacleAvoid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacleAvoid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacleAvoid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetObstacleAvoid-response> is deprecated: use dobot_bringup-srv:SetObstacleAvoid-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetObstacleAvoid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacleAvoid-response>) ostream)
  "Serializes a message object of type '<SetObstacleAvoid-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacleAvoid-response>) istream)
  "Deserializes a message object of type '<SetObstacleAvoid-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacleAvoid-response>)))
  "Returns string type for a service object of type '<SetObstacleAvoid-response>"
  "dobot_bringup/SetObstacleAvoidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleAvoid-response)))
  "Returns string type for a service object of type 'SetObstacleAvoid-response"
  "dobot_bringup/SetObstacleAvoidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacleAvoid-response>)))
  "Returns md5sum for a message object of type '<SetObstacleAvoid-response>"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacleAvoid-response)))
  "Returns md5sum for a message object of type 'SetObstacleAvoid-response"
  "e9885118d8baa0e46bd047b6deaa3f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacleAvoid-response>)))
  "Returns full string definition for message of type '<SetObstacleAvoid-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacleAvoid-response)))
  "Returns full string definition for message of type 'SetObstacleAvoid-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacleAvoid-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacleAvoid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacleAvoid-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObstacleAvoid)))
  'SetObstacleAvoid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObstacleAvoid)))
  'SetObstacleAvoid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacleAvoid)))
  "Returns string type for a service object of type '<SetObstacleAvoid>"
  "dobot_bringup/SetObstacleAvoid")