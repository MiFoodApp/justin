;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::BrakeControl)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'BrakeControl (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::BRAKECONTROL")
  (make-package "DOBOT_BRINGUP::BRAKECONTROL"))
(unless (find-package "DOBOT_BRINGUP::BRAKECONTROLREQUEST")
  (make-package "DOBOT_BRINGUP::BRAKECONTROLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::BRAKECONTROLRESPONSE")
  (make-package "DOBOT_BRINGUP::BRAKECONTROLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::BrakeControlRequest
  :super ros::object
  :slots (_axisID _value ))

(defmethod dobot_bringup::BrakeControlRequest
  (:init
   (&key
    ((:axisID __axisID) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _axisID (round __axisID))
   (setq _value (round __value))
   self)
  (:axisID
   (&optional __axisID)
   (if __axisID (setq _axisID __axisID)) _axisID)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _axisID
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _axisID
       (write-long _axisID s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _axisID
     (setq _axisID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::BrakeControlResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::BrakeControlResponse
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

(defclass dobot_bringup::BrakeControl
  :super ros::object
  :slots ())

(setf (get dobot_bringup::BrakeControl :md5sum-) "2600ab19caac21b4314a6daf413b16b7")
(setf (get dobot_bringup::BrakeControl :datatype-) "dobot_bringup/BrakeControl")
(setf (get dobot_bringup::BrakeControl :request) dobot_bringup::BrakeControlRequest)
(setf (get dobot_bringup::BrakeControl :response) dobot_bringup::BrakeControlResponse)

(defmethod dobot_bringup::BrakeControlRequest
  (:response () (instance dobot_bringup::BrakeControlResponse :init)))

(setf (get dobot_bringup::BrakeControlRequest :md5sum-) "2600ab19caac21b4314a6daf413b16b7")
(setf (get dobot_bringup::BrakeControlRequest :datatype-) "dobot_bringup/BrakeControlRequest")
(setf (get dobot_bringup::BrakeControlRequest :definition-)
      "int32 axisID
int32 value
---
int32 res
")

(setf (get dobot_bringup::BrakeControlResponse :md5sum-) "2600ab19caac21b4314a6daf413b16b7")
(setf (get dobot_bringup::BrakeControlResponse :datatype-) "dobot_bringup/BrakeControlResponse")
(setf (get dobot_bringup::BrakeControlResponse :definition-)
      "int32 axisID
int32 value
---
int32 res
")



(provide :dobot_bringup/BrakeControl "2600ab19caac21b4314a6daf413b16b7")


