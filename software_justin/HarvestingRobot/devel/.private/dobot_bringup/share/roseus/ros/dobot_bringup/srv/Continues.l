;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Continues)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Continues (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::CONTINUES")
  (make-package "DOBOT_BRINGUP::CONTINUES"))
(unless (find-package "DOBOT_BRINGUP::CONTINUESREQUEST")
  (make-package "DOBOT_BRINGUP::CONTINUESREQUEST"))
(unless (find-package "DOBOT_BRINGUP::CONTINUESRESPONSE")
  (make-package "DOBOT_BRINGUP::CONTINUESRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ContinuesRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::ContinuesRequest
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

(defclass dobot_bringup::ContinuesResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ContinuesResponse
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

(defclass dobot_bringup::Continues
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Continues :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::Continues :datatype-) "dobot_bringup/Continues")
(setf (get dobot_bringup::Continues :request) dobot_bringup::ContinuesRequest)
(setf (get dobot_bringup::Continues :response) dobot_bringup::ContinuesResponse)

(defmethod dobot_bringup::ContinuesRequest
  (:response () (instance dobot_bringup::ContinuesResponse :init)))

(setf (get dobot_bringup::ContinuesRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ContinuesRequest :datatype-) "dobot_bringup/ContinuesRequest")
(setf (get dobot_bringup::ContinuesRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::ContinuesResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ContinuesResponse :datatype-) "dobot_bringup/ContinuesResponse")
(setf (get dobot_bringup::ContinuesResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/Continues "ca16cfbd5443ad97f6cc7ffd6bb67292")


