;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetArmOrientation)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetArmOrientation (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETARMORIENTATION")
  (make-package "DOBOT_BRINGUP::SETARMORIENTATION"))
(unless (find-package "DOBOT_BRINGUP::SETARMORIENTATIONREQUEST")
  (make-package "DOBOT_BRINGUP::SETARMORIENTATIONREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETARMORIENTATIONRESPONSE")
  (make-package "DOBOT_BRINGUP::SETARMORIENTATIONRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetArmOrientationRequest
  :super ros::object
  :slots (_LorR _UorD _ForN _Config6 ))

(defmethod dobot_bringup::SetArmOrientationRequest
  (:init
   (&key
    ((:LorR __LorR) 0)
    ((:UorD __UorD) 0)
    ((:ForN __ForN) 0)
    ((:Config6 __Config6) 0)
    )
   (send-super :init)
   (setq _LorR (round __LorR))
   (setq _UorD (round __UorD))
   (setq _ForN (round __ForN))
   (setq _Config6 (round __Config6))
   self)
  (:LorR
   (&optional __LorR)
   (if __LorR (setq _LorR __LorR)) _LorR)
  (:UorD
   (&optional __UorD)
   (if __UorD (setq _UorD __UorD)) _UorD)
  (:ForN
   (&optional __ForN)
   (if __ForN (setq _ForN __ForN)) _ForN)
  (:Config6
   (&optional __Config6)
   (if __Config6 (setq _Config6 __Config6)) _Config6)
  (:serialization-length
   ()
   (+
    ;; int32 _LorR
    4
    ;; int32 _UorD
    4
    ;; int32 _ForN
    4
    ;; int32 _Config6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _LorR
       (write-long _LorR s)
     ;; int32 _UorD
       (write-long _UorD s)
     ;; int32 _ForN
       (write-long _ForN s)
     ;; int32 _Config6
       (write-long _Config6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _LorR
     (setq _LorR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _UorD
     (setq _UorD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ForN
     (setq _ForN (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Config6
     (setq _Config6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetArmOrientationResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetArmOrientationResponse
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

(defclass dobot_bringup::SetArmOrientation
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetArmOrientation :md5sum-) "ef4067edc06a1e1dbf02b5e0bd3a6322")
(setf (get dobot_bringup::SetArmOrientation :datatype-) "dobot_bringup/SetArmOrientation")
(setf (get dobot_bringup::SetArmOrientation :request) dobot_bringup::SetArmOrientationRequest)
(setf (get dobot_bringup::SetArmOrientation :response) dobot_bringup::SetArmOrientationResponse)

(defmethod dobot_bringup::SetArmOrientationRequest
  (:response () (instance dobot_bringup::SetArmOrientationResponse :init)))

(setf (get dobot_bringup::SetArmOrientationRequest :md5sum-) "ef4067edc06a1e1dbf02b5e0bd3a6322")
(setf (get dobot_bringup::SetArmOrientationRequest :datatype-) "dobot_bringup/SetArmOrientationRequest")
(setf (get dobot_bringup::SetArmOrientationRequest :definition-)
      "int32 LorR
int32 UorD
int32 ForN
int32 Config6
---
int32 res

")

(setf (get dobot_bringup::SetArmOrientationResponse :md5sum-) "ef4067edc06a1e1dbf02b5e0bd3a6322")
(setf (get dobot_bringup::SetArmOrientationResponse :datatype-) "dobot_bringup/SetArmOrientationResponse")
(setf (get dobot_bringup::SetArmOrientationResponse :definition-)
      "int32 LorR
int32 UorD
int32 ForN
int32 Config6
---
int32 res

")



(provide :dobot_bringup/SetArmOrientation "ef4067edc06a1e1dbf02b5e0bd3a6322")


