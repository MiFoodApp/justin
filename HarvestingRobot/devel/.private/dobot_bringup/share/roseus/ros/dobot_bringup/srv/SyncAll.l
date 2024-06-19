;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SyncAll)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SyncAll (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SYNCALL")
  (make-package "DOBOT_BRINGUP::SYNCALL"))
(unless (find-package "DOBOT_BRINGUP::SYNCALLREQUEST")
  (make-package "DOBOT_BRINGUP::SYNCALLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SYNCALLRESPONSE")
  (make-package "DOBOT_BRINGUP::SYNCALLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SyncAllRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::SyncAllRequest
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

(defclass dobot_bringup::SyncAllResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SyncAllResponse
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

(defclass dobot_bringup::SyncAll
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SyncAll :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::SyncAll :datatype-) "dobot_bringup/SyncAll")
(setf (get dobot_bringup::SyncAll :request) dobot_bringup::SyncAllRequest)
(setf (get dobot_bringup::SyncAll :response) dobot_bringup::SyncAllResponse)

(defmethod dobot_bringup::SyncAllRequest
  (:response () (instance dobot_bringup::SyncAllResponse :init)))

(setf (get dobot_bringup::SyncAllRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::SyncAllRequest :datatype-) "dobot_bringup/SyncAllRequest")
(setf (get dobot_bringup::SyncAllRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::SyncAllResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::SyncAllResponse :datatype-) "dobot_bringup/SyncAllResponse")
(setf (get dobot_bringup::SyncAllResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/SyncAll "ca16cfbd5443ad97f6cc7ffd6bb67292")


