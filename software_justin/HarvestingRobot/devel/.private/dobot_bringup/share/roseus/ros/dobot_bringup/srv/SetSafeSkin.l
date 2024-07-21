;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetSafeSkin)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetSafeSkin (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETSAFESKIN")
  (make-package "DOBOT_BRINGUP::SETSAFESKIN"))
(unless (find-package "DOBOT_BRINGUP::SETSAFESKINREQUEST")
  (make-package "DOBOT_BRINGUP::SETSAFESKINREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETSAFESKINRESPONSE")
  (make-package "DOBOT_BRINGUP::SETSAFESKINRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetSafeSkinRequest
  :super ros::object
  :slots (_status ))

(defmethod dobot_bringup::SetSafeSkinRequest
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetSafeSkinResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetSafeSkinResponse
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

(defclass dobot_bringup::SetSafeSkin
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetSafeSkin :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetSafeSkin :datatype-) "dobot_bringup/SetSafeSkin")
(setf (get dobot_bringup::SetSafeSkin :request) dobot_bringup::SetSafeSkinRequest)
(setf (get dobot_bringup::SetSafeSkin :response) dobot_bringup::SetSafeSkinResponse)

(defmethod dobot_bringup::SetSafeSkinRequest
  (:response () (instance dobot_bringup::SetSafeSkinResponse :init)))

(setf (get dobot_bringup::SetSafeSkinRequest :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetSafeSkinRequest :datatype-) "dobot_bringup/SetSafeSkinRequest")
(setf (get dobot_bringup::SetSafeSkinRequest :definition-)
      "int32 status
---
int32 res
")

(setf (get dobot_bringup::SetSafeSkinResponse :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetSafeSkinResponse :datatype-) "dobot_bringup/SetSafeSkinResponse")
(setf (get dobot_bringup::SetSafeSkinResponse :definition-)
      "int32 status
---
int32 res
")



(provide :dobot_bringup/SetSafeSkin "e9885118d8baa0e46bd047b6deaa3f81")


