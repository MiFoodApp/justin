;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::EmergencyStop)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'EmergencyStop (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::EMERGENCYSTOP")
  (make-package "DOBOT_BRINGUP::EMERGENCYSTOP"))
(unless (find-package "DOBOT_BRINGUP::EMERGENCYSTOPREQUEST")
  (make-package "DOBOT_BRINGUP::EMERGENCYSTOPREQUEST"))
(unless (find-package "DOBOT_BRINGUP::EMERGENCYSTOPRESPONSE")
  (make-package "DOBOT_BRINGUP::EMERGENCYSTOPRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::EmergencyStopRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::EmergencyStopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot_bringup::EmergencyStopResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::EmergencyStopResponse
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

(defclass dobot_bringup::EmergencyStop
  :super ros::object
  :slots ())

(setf (get dobot_bringup::EmergencyStop :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::EmergencyStop :datatype-) "dobot_bringup/EmergencyStop")
(setf (get dobot_bringup::EmergencyStop :request) dobot_bringup::EmergencyStopRequest)
(setf (get dobot_bringup::EmergencyStop :response) dobot_bringup::EmergencyStopResponse)

(defmethod dobot_bringup::EmergencyStopRequest
  (:response () (instance dobot_bringup::EmergencyStopResponse :init)))

(setf (get dobot_bringup::EmergencyStopRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::EmergencyStopRequest :datatype-) "dobot_bringup/EmergencyStopRequest")
(setf (get dobot_bringup::EmergencyStopRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::EmergencyStopResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::EmergencyStopResponse :datatype-) "dobot_bringup/EmergencyStopResponse")
(setf (get dobot_bringup::EmergencyStopResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/EmergencyStop "ca16cfbd5443ad97f6cc7ffd6bb67292")


