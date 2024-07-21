;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::pause)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'pause (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::PAUSE")
  (make-package "DOBOT_BRINGUP::PAUSE"))
(unless (find-package "DOBOT_BRINGUP::PAUSEREQUEST")
  (make-package "DOBOT_BRINGUP::PAUSEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::PAUSERESPONSE")
  (make-package "DOBOT_BRINGUP::PAUSERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::pauseRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::pauseRequest
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

(defclass dobot_bringup::pauseResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::pauseResponse
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

(defclass dobot_bringup::pause
  :super ros::object
  :slots ())

(setf (get dobot_bringup::pause :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::pause :datatype-) "dobot_bringup/pause")
(setf (get dobot_bringup::pause :request) dobot_bringup::pauseRequest)
(setf (get dobot_bringup::pause :response) dobot_bringup::pauseResponse)

(defmethod dobot_bringup::pauseRequest
  (:response () (instance dobot_bringup::pauseResponse :init)))

(setf (get dobot_bringup::pauseRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::pauseRequest :datatype-) "dobot_bringup/pauseRequest")
(setf (get dobot_bringup::pauseRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::pauseResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::pauseResponse :datatype-) "dobot_bringup/pauseResponse")
(setf (get dobot_bringup::pauseResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/pause "ca16cfbd5443ad97f6cc7ffd6bb67292")


