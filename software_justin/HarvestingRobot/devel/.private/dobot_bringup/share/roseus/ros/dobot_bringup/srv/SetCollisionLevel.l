;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetCollisionLevel)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetCollisionLevel (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETCOLLISIONLEVEL")
  (make-package "DOBOT_BRINGUP::SETCOLLISIONLEVEL"))
(unless (find-package "DOBOT_BRINGUP::SETCOLLISIONLEVELREQUEST")
  (make-package "DOBOT_BRINGUP::SETCOLLISIONLEVELREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETCOLLISIONLEVELRESPONSE")
  (make-package "DOBOT_BRINGUP::SETCOLLISIONLEVELRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetCollisionLevelRequest
  :super ros::object
  :slots (_level ))

(defmethod dobot_bringup::SetCollisionLevelRequest
  (:init
   (&key
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _level (round __level))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; int32 _level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _level
       (write-long _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _level
     (setq _level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetCollisionLevelResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetCollisionLevelResponse
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

(defclass dobot_bringup::SetCollisionLevel
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetCollisionLevel :md5sum-) "66c784877185ea647f602bc2ad14ae86")
(setf (get dobot_bringup::SetCollisionLevel :datatype-) "dobot_bringup/SetCollisionLevel")
(setf (get dobot_bringup::SetCollisionLevel :request) dobot_bringup::SetCollisionLevelRequest)
(setf (get dobot_bringup::SetCollisionLevel :response) dobot_bringup::SetCollisionLevelResponse)

(defmethod dobot_bringup::SetCollisionLevelRequest
  (:response () (instance dobot_bringup::SetCollisionLevelResponse :init)))

(setf (get dobot_bringup::SetCollisionLevelRequest :md5sum-) "66c784877185ea647f602bc2ad14ae86")
(setf (get dobot_bringup::SetCollisionLevelRequest :datatype-) "dobot_bringup/SetCollisionLevelRequest")
(setf (get dobot_bringup::SetCollisionLevelRequest :definition-)
      "int32 level
---
int32 res
")

(setf (get dobot_bringup::SetCollisionLevelResponse :md5sum-) "66c784877185ea647f602bc2ad14ae86")
(setf (get dobot_bringup::SetCollisionLevelResponse :datatype-) "dobot_bringup/SetCollisionLevelResponse")
(setf (get dobot_bringup::SetCollisionLevelResponse :definition-)
      "int32 level
---
int32 res
")



(provide :dobot_bringup/SetCollisionLevel "66c784877185ea647f602bc2ad14ae86")


