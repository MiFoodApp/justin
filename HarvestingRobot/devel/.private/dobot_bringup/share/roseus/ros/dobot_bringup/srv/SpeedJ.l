;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SpeedJ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SpeedJ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SPEEDJ")
  (make-package "DOBOT_BRINGUP::SPEEDJ"))
(unless (find-package "DOBOT_BRINGUP::SPEEDJREQUEST")
  (make-package "DOBOT_BRINGUP::SPEEDJREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SPEEDJRESPONSE")
  (make-package "DOBOT_BRINGUP::SPEEDJRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SpeedJRequest
  :super ros::object
  :slots (_r ))

(defmethod dobot_bringup::SpeedJRequest
  (:init
   (&key
    ((:r __r) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; int32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _r
       (write-long _r s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SpeedJResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SpeedJResponse
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

(defclass dobot_bringup::SpeedJ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SpeedJ :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedJ :datatype-) "dobot_bringup/SpeedJ")
(setf (get dobot_bringup::SpeedJ :request) dobot_bringup::SpeedJRequest)
(setf (get dobot_bringup::SpeedJ :response) dobot_bringup::SpeedJResponse)

(defmethod dobot_bringup::SpeedJRequest
  (:response () (instance dobot_bringup::SpeedJResponse :init)))

(setf (get dobot_bringup::SpeedJRequest :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedJRequest :datatype-) "dobot_bringup/SpeedJRequest")
(setf (get dobot_bringup::SpeedJRequest :definition-)
      "int32 r
---
int32 res
")

(setf (get dobot_bringup::SpeedJResponse :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedJResponse :datatype-) "dobot_bringup/SpeedJResponse")
(setf (get dobot_bringup::SpeedJResponse :definition-)
      "int32 r
---
int32 res
")



(provide :dobot_bringup/SpeedJ "941d9ecd0f5402311261de883bef5059")


