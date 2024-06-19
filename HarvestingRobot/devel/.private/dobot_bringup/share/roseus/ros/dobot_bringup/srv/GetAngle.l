;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetAngle)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetAngle (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETANGLE")
  (make-package "DOBOT_BRINGUP::GETANGLE"))
(unless (find-package "DOBOT_BRINGUP::GETANGLEREQUEST")
  (make-package "DOBOT_BRINGUP::GETANGLEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETANGLERESPONSE")
  (make-package "DOBOT_BRINGUP::GETANGLERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetAngleRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::GetAngleRequest
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

(defclass dobot_bringup::GetAngleResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetAngleResponse
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

(defclass dobot_bringup::GetAngle
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetAngle :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetAngle :datatype-) "dobot_bringup/GetAngle")
(setf (get dobot_bringup::GetAngle :request) dobot_bringup::GetAngleRequest)
(setf (get dobot_bringup::GetAngle :response) dobot_bringup::GetAngleResponse)

(defmethod dobot_bringup::GetAngleRequest
  (:response () (instance dobot_bringup::GetAngleResponse :init)))

(setf (get dobot_bringup::GetAngleRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetAngleRequest :datatype-) "dobot_bringup/GetAngleRequest")
(setf (get dobot_bringup::GetAngleRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::GetAngleResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetAngleResponse :datatype-) "dobot_bringup/GetAngleResponse")
(setf (get dobot_bringup::GetAngleResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/GetAngle "ca16cfbd5443ad97f6cc7ffd6bb67292")


