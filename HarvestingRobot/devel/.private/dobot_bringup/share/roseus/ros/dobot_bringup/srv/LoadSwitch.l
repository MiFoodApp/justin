;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::LoadSwitch)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'LoadSwitch (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::LOADSWITCH")
  (make-package "DOBOT_BRINGUP::LOADSWITCH"))
(unless (find-package "DOBOT_BRINGUP::LOADSWITCHREQUEST")
  (make-package "DOBOT_BRINGUP::LOADSWITCHREQUEST"))
(unless (find-package "DOBOT_BRINGUP::LOADSWITCHRESPONSE")
  (make-package "DOBOT_BRINGUP::LOADSWITCHRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::LoadSwitchRequest
  :super ros::object
  :slots (_status ))

(defmethod dobot_bringup::LoadSwitchRequest
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

(defclass dobot_bringup::LoadSwitchResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::LoadSwitchResponse
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

(defclass dobot_bringup::LoadSwitch
  :super ros::object
  :slots ())

(setf (get dobot_bringup::LoadSwitch :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::LoadSwitch :datatype-) "dobot_bringup/LoadSwitch")
(setf (get dobot_bringup::LoadSwitch :request) dobot_bringup::LoadSwitchRequest)
(setf (get dobot_bringup::LoadSwitch :response) dobot_bringup::LoadSwitchResponse)

(defmethod dobot_bringup::LoadSwitchRequest
  (:response () (instance dobot_bringup::LoadSwitchResponse :init)))

(setf (get dobot_bringup::LoadSwitchRequest :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::LoadSwitchRequest :datatype-) "dobot_bringup/LoadSwitchRequest")
(setf (get dobot_bringup::LoadSwitchRequest :definition-)
      "int32 status 

---
int32 res
")

(setf (get dobot_bringup::LoadSwitchResponse :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::LoadSwitchResponse :datatype-) "dobot_bringup/LoadSwitchResponse")
(setf (get dobot_bringup::LoadSwitchResponse :definition-)
      "int32 status 

---
int32 res
")



(provide :dobot_bringup/LoadSwitch "e9885118d8baa0e46bd047b6deaa3f81")


