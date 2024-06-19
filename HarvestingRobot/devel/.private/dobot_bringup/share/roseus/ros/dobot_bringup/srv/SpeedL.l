;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SpeedL)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SpeedL (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SPEEDL")
  (make-package "DOBOT_BRINGUP::SPEEDL"))
(unless (find-package "DOBOT_BRINGUP::SPEEDLREQUEST")
  (make-package "DOBOT_BRINGUP::SPEEDLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SPEEDLRESPONSE")
  (make-package "DOBOT_BRINGUP::SPEEDLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SpeedLRequest
  :super ros::object
  :slots (_r ))

(defmethod dobot_bringup::SpeedLRequest
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

(defclass dobot_bringup::SpeedLResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SpeedLResponse
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

(defclass dobot_bringup::SpeedL
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SpeedL :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedL :datatype-) "dobot_bringup/SpeedL")
(setf (get dobot_bringup::SpeedL :request) dobot_bringup::SpeedLRequest)
(setf (get dobot_bringup::SpeedL :response) dobot_bringup::SpeedLResponse)

(defmethod dobot_bringup::SpeedLRequest
  (:response () (instance dobot_bringup::SpeedLResponse :init)))

(setf (get dobot_bringup::SpeedLRequest :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedLRequest :datatype-) "dobot_bringup/SpeedLRequest")
(setf (get dobot_bringup::SpeedLRequest :definition-)
      "int32 r
---
int32 res
")

(setf (get dobot_bringup::SpeedLResponse :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::SpeedLResponse :datatype-) "dobot_bringup/SpeedLResponse")
(setf (get dobot_bringup::SpeedLResponse :definition-)
      "int32 r
---
int32 res
")



(provide :dobot_bringup/SpeedL "941d9ecd0f5402311261de883bef5059")


