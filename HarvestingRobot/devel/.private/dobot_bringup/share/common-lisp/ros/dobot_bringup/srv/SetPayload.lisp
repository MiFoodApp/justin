; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude SetPayload-request.msg.html

(cl:defclass <SetPayload-request> (roslisp-msg-protocol:ros-message)
  ((load
    :reader load
    :initarg :load
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPayload-request (<SetPayload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPayload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPayload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetPayload-request> is deprecated: use dobot_bringup-srv:SetPayload-request instead.")))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <SetPayload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:load-val is deprecated.  Use dobot_bringup-srv:load instead.")
  (load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPayload-request>) ostream)
  "Serializes a message object of type '<SetPayload-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPayload-request>) istream)
  "Deserializes a message object of type '<SetPayload-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPayload-request>)))
  "Returns string type for a service object of type '<SetPayload-request>"
  "dobot_bringup/SetPayloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload-request)))
  "Returns string type for a service object of type 'SetPayload-request"
  "dobot_bringup/SetPayloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPayload-request>)))
  "Returns md5sum for a message object of type '<SetPayload-request>"
  "0ccc960c0675c1aad4912155bb3fde8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPayload-request)))
  "Returns md5sum for a message object of type 'SetPayload-request"
  "0ccc960c0675c1aad4912155bb3fde8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPayload-request>)))
  "Returns full string definition for message of type '<SetPayload-request>"
  (cl:format cl:nil "float64 load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPayload-request)))
  "Returns full string definition for message of type 'SetPayload-request"
  (cl:format cl:nil "float64 load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPayload-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPayload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPayload-request
    (cl:cons ':load (load msg))
))
;//! \htmlinclude SetPayload-response.msg.html

(cl:defclass <SetPayload-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass SetPayload-response (<SetPayload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPayload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPayload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<SetPayload-response> is deprecated: use dobot_bringup-srv:SetPayload-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <SetPayload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPayload-response>) ostream)
  "Serializes a message object of type '<SetPayload-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPayload-response>) istream)
  "Deserializes a message object of type '<SetPayload-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPayload-response>)))
  "Returns string type for a service object of type '<SetPayload-response>"
  "dobot_bringup/SetPayloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload-response)))
  "Returns string type for a service object of type 'SetPayload-response"
  "dobot_bringup/SetPayloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPayload-response>)))
  "Returns md5sum for a message object of type '<SetPayload-response>"
  "0ccc960c0675c1aad4912155bb3fde8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPayload-response)))
  "Returns md5sum for a message object of type 'SetPayload-response"
  "0ccc960c0675c1aad4912155bb3fde8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPayload-response>)))
  "Returns full string definition for message of type '<SetPayload-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPayload-response)))
  "Returns full string definition for message of type 'SetPayload-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPayload-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPayload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPayload-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPayload)))
  'SetPayload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPayload)))
  'SetPayload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPayload)))
  "Returns string type for a service object of type '<SetPayload>"
  "dobot_bringup/SetPayload")