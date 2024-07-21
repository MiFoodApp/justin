;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Wait)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Wait (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::WAIT")
  (make-package "DOBOT_BRINGUP::WAIT"))
(unless (find-package "DOBOT_BRINGUP::WAITREQUEST")
  (make-package "DOBOT_BRINGUP::WAITREQUEST"))
(unless (find-package "DOBOT_BRINGUP::WAITRESPONSE")
  (make-package "DOBOT_BRINGUP::WAITRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::WaitRequest
  :super ros::object
  :slots (_time ))

(defmethod dobot_bringup::WaitRequest
  (:init
   (&key
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _time (round __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _time
       (write-long _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::WaitResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::WaitResponse
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

(defclass dobot_bringup::Wait
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Wait :md5sum-) "ffdd33da4722c26f9e1ea1ac05b9a429")
(setf (get dobot_bringup::Wait :datatype-) "dobot_bringup/Wait")
(setf (get dobot_bringup::Wait :request) dobot_bringup::WaitRequest)
(setf (get dobot_bringup::Wait :response) dobot_bringup::WaitResponse)

(defmethod dobot_bringup::WaitRequest
  (:response () (instance dobot_bringup::WaitResponse :init)))

(setf (get dobot_bringup::WaitRequest :md5sum-) "ffdd33da4722c26f9e1ea1ac05b9a429")
(setf (get dobot_bringup::WaitRequest :datatype-) "dobot_bringup/WaitRequest")
(setf (get dobot_bringup::WaitRequest :definition-)
      "int32 time
---
int32 res
")

(setf (get dobot_bringup::WaitResponse :md5sum-) "ffdd33da4722c26f9e1ea1ac05b9a429")
(setf (get dobot_bringup::WaitResponse :datatype-) "dobot_bringup/WaitResponse")
(setf (get dobot_bringup::WaitResponse :definition-)
      "int32 time
---
int32 res
")



(provide :dobot_bringup/Wait "ffdd33da4722c26f9e1ea1ac05b9a429")


