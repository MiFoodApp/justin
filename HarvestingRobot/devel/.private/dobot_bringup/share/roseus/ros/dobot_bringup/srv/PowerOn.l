;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::PowerOn)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'PowerOn (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::POWERON")
  (make-package "DOBOT_BRINGUP::POWERON"))
(unless (find-package "DOBOT_BRINGUP::POWERONREQUEST")
  (make-package "DOBOT_BRINGUP::POWERONREQUEST"))
(unless (find-package "DOBOT_BRINGUP::POWERONRESPONSE")
  (make-package "DOBOT_BRINGUP::POWERONRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::PowerOnRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::PowerOnRequest
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

(defclass dobot_bringup::PowerOnResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::PowerOnResponse
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

(defclass dobot_bringup::PowerOn
  :super ros::object
  :slots ())

(setf (get dobot_bringup::PowerOn :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PowerOn :datatype-) "dobot_bringup/PowerOn")
(setf (get dobot_bringup::PowerOn :request) dobot_bringup::PowerOnRequest)
(setf (get dobot_bringup::PowerOn :response) dobot_bringup::PowerOnResponse)

(defmethod dobot_bringup::PowerOnRequest
  (:response () (instance dobot_bringup::PowerOnResponse :init)))

(setf (get dobot_bringup::PowerOnRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PowerOnRequest :datatype-) "dobot_bringup/PowerOnRequest")
(setf (get dobot_bringup::PowerOnRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::PowerOnResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PowerOnResponse :datatype-) "dobot_bringup/PowerOnResponse")
(setf (get dobot_bringup::PowerOnResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/PowerOn "ca16cfbd5443ad97f6cc7ffd6bb67292")


