;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ClearError)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ClearError (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::CLEARERROR")
  (make-package "DOBOT_BRINGUP::CLEARERROR"))
(unless (find-package "DOBOT_BRINGUP::CLEARERRORREQUEST")
  (make-package "DOBOT_BRINGUP::CLEARERRORREQUEST"))
(unless (find-package "DOBOT_BRINGUP::CLEARERRORRESPONSE")
  (make-package "DOBOT_BRINGUP::CLEARERRORRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ClearErrorRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::ClearErrorRequest
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

(defclass dobot_bringup::ClearErrorResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ClearErrorResponse
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

(defclass dobot_bringup::ClearError
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ClearError :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ClearError :datatype-) "dobot_bringup/ClearError")
(setf (get dobot_bringup::ClearError :request) dobot_bringup::ClearErrorRequest)
(setf (get dobot_bringup::ClearError :response) dobot_bringup::ClearErrorResponse)

(defmethod dobot_bringup::ClearErrorRequest
  (:response () (instance dobot_bringup::ClearErrorResponse :init)))

(setf (get dobot_bringup::ClearErrorRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ClearErrorRequest :datatype-) "dobot_bringup/ClearErrorRequest")
(setf (get dobot_bringup::ClearErrorRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::ClearErrorResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ClearErrorResponse :datatype-) "dobot_bringup/ClearErrorResponse")
(setf (get dobot_bringup::ClearErrorResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/ClearError "ca16cfbd5443ad97f6cc7ffd6bb67292")


