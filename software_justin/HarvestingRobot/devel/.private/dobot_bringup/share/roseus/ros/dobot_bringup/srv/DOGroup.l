;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::DOGroup)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'DOGroup (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::DOGROUP")
  (make-package "DOBOT_BRINGUP::DOGROUP"))
(unless (find-package "DOBOT_BRINGUP::DOGROUPREQUEST")
  (make-package "DOBOT_BRINGUP::DOGROUPREQUEST"))
(unless (find-package "DOBOT_BRINGUP::DOGROUPRESPONSE")
  (make-package "DOBOT_BRINGUP::DOGROUPRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::DOGroupRequest
  :super ros::object
  :slots (_args ))

(defmethod dobot_bringup::DOGroupRequest
  (:init
   (&key
    ((:args __args) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _args __args)
   self)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; int32[] _args
    (* 4    (length _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _args
     (write-long (length _args) s)
     (dotimes (i (length _args))
       (write-long (elt _args i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _args i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::DOGroupResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::DOGroupResponse
  (:init
   (&key
    ((:res __res) 0)
    )
   (send-super :init)
   (setq _res (round __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; int32 _res
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _res
       (write-long _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _res
     (setq _res (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::DOGroup
  :super ros::object
  :slots ())

(setf (get dobot_bringup::DOGroup :md5sum-) "808684a591f350916730d57d20e91134")
(setf (get dobot_bringup::DOGroup :datatype-) "dobot_bringup/DOGroup")
(setf (get dobot_bringup::DOGroup :request) dobot_bringup::DOGroupRequest)
(setf (get dobot_bringup::DOGroup :response) dobot_bringup::DOGroupResponse)

(defmethod dobot_bringup::DOGroupRequest
  (:response () (instance dobot_bringup::DOGroupResponse :init)))

(setf (get dobot_bringup::DOGroupRequest :md5sum-) "808684a591f350916730d57d20e91134")
(setf (get dobot_bringup::DOGroupRequest :datatype-) "dobot_bringup/DOGroupRequest")
(setf (get dobot_bringup::DOGroupRequest :definition-)
      "int32[] args

---
int32 res
")

(setf (get dobot_bringup::DOGroupResponse :md5sum-) "808684a591f350916730d57d20e91134")
(setf (get dobot_bringup::DOGroupResponse :datatype-) "dobot_bringup/DOGroupResponse")
(setf (get dobot_bringup::DOGroupResponse :definition-)
      "int32[] args

---
int32 res
")



(provide :dobot_bringup/DOGroup "808684a591f350916730d57d20e91134")


