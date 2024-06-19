;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Sync)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Sync (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SYNC")
  (make-package "DOBOT_BRINGUP::SYNC"))
(unless (find-package "DOBOT_BRINGUP::SYNCREQUEST")
  (make-package "DOBOT_BRINGUP::SYNCREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SYNCRESPONSE")
  (make-package "DOBOT_BRINGUP::SYNCRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SyncRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::SyncRequest
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

(defclass dobot_bringup::SyncResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SyncResponse
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

(defclass dobot_bringup::Sync
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Sync :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::Sync :datatype-) "dobot_bringup/Sync")
(setf (get dobot_bringup::Sync :request) dobot_bringup::SyncRequest)
(setf (get dobot_bringup::Sync :response) dobot_bringup::SyncResponse)

(defmethod dobot_bringup::SyncRequest
  (:response () (instance dobot_bringup::SyncResponse :init)))

(setf (get dobot_bringup::SyncRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::SyncRequest :datatype-) "dobot_bringup/SyncRequest")
(setf (get dobot_bringup::SyncRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::SyncResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::SyncResponse :datatype-) "dobot_bringup/SyncResponse")
(setf (get dobot_bringup::SyncResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/Sync "ca16cfbd5443ad97f6cc7ffd6bb67292")


