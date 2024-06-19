; Auto-generated. Do not edit!


(cl:in-package dobot_bringup-srv)


;//! \htmlinclude MoveJog-request.msg.html

(cl:defclass <MoveJog-request> (roslisp-msg-protocol:ros-message)
  ((axisID
    :reader axisID
    :initarg :axisID
    :type cl:string
    :initform "")
   (paramValue
    :reader paramValue
    :initarg :paramValue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass MoveJog-request (<MoveJog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<MoveJog-request> is deprecated: use dobot_bringup-srv:MoveJog-request instead.")))

(cl:ensure-generic-function 'axisID-val :lambda-list '(m))
(cl:defmethod axisID-val ((m <MoveJog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:axisID-val is deprecated.  Use dobot_bringup-srv:axisID instead.")
  (axisID m))

(cl:ensure-generic-function 'paramValue-val :lambda-list '(m))
(cl:defmethod paramValue-val ((m <MoveJog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:paramValue-val is deprecated.  Use dobot_bringup-srv:paramValue instead.")
  (paramValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJog-request>) ostream)
  "Serializes a message object of type '<MoveJog-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'axisID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'axisID))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paramValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'paramValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJog-request>) istream)
  "Deserializes a message object of type '<MoveJog-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axisID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'axisID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paramValue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paramValue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJog-request>)))
  "Returns string type for a service object of type '<MoveJog-request>"
  "dobot_bringup/MoveJogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJog-request)))
  "Returns string type for a service object of type 'MoveJog-request"
  "dobot_bringup/MoveJogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJog-request>)))
  "Returns md5sum for a message object of type '<MoveJog-request>"
  "319211ff13c695539e6dfdbf43aeb58b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJog-request)))
  "Returns md5sum for a message object of type 'MoveJog-request"
  "319211ff13c695539e6dfdbf43aeb58b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJog-request>)))
  "Returns full string definition for message of type '<MoveJog-request>"
  (cl:format cl:nil "string axisID~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJog-request)))
  "Returns full string definition for message of type 'MoveJog-request"
  (cl:format cl:nil "string axisID~%string[] paramValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJog-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'axisID))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paramValue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJog-request
    (cl:cons ':axisID (axisID msg))
    (cl:cons ':paramValue (paramValue msg))
))
;//! \htmlinclude MoveJog-response.msg.html

(cl:defclass <MoveJog-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveJog-response (<MoveJog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot_bringup-srv:<MoveJog-response> is deprecated: use dobot_bringup-srv:MoveJog-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <MoveJog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot_bringup-srv:res-val is deprecated.  Use dobot_bringup-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJog-response>) ostream)
  "Serializes a message object of type '<MoveJog-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJog-response>) istream)
  "Deserializes a message object of type '<MoveJog-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJog-response>)))
  "Returns string type for a service object of type '<MoveJog-response>"
  "dobot_bringup/MoveJogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJog-response)))
  "Returns string type for a service object of type 'MoveJog-response"
  "dobot_bringup/MoveJogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJog-response>)))
  "Returns md5sum for a message object of type '<MoveJog-response>"
  "319211ff13c695539e6dfdbf43aeb58b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJog-response)))
  "Returns md5sum for a message object of type 'MoveJog-response"
  "319211ff13c695539e6dfdbf43aeb58b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJog-response>)))
  "Returns full string definition for message of type '<MoveJog-response>"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJog-response)))
  "Returns full string definition for message of type 'MoveJog-response"
  (cl:format cl:nil "int32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJog-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJog-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveJog)))
  'MoveJog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveJog)))
  'MoveJog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJog)))
  "Returns string type for a service object of type '<MoveJog>"
  "dobot_bringup/MoveJog")