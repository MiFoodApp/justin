;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ContinueScript)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ContinueScript (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::CONTINUESCRIPT")
  (make-package "DOBOT_BRINGUP::CONTINUESCRIPT"))
(unless (find-package "DOBOT_BRINGUP::CONTINUESCRIPTREQUEST")
  (make-package "DOBOT_BRINGUP::CONTINUESCRIPTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::CONTINUESCRIPTRESPONSE")
  (make-package "DOBOT_BRINGUP::CONTINUESCRIPTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ContinueScriptRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::ContinueScriptRequest
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

(defclass dobot_bringup::ContinueScriptResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ContinueScriptResponse
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

(defclass dobot_bringup::ContinueScript
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ContinueScript :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ContinueScript :datatype-) "dobot_bringup/ContinueScript")
(setf (get dobot_bringup::ContinueScript :request) dobot_bringup::ContinueScriptRequest)
(setf (get dobot_bringup::ContinueScript :response) dobot_bringup::ContinueScriptResponse)

(defmethod dobot_bringup::ContinueScriptRequest
  (:response () (instance dobot_bringup::ContinueScriptResponse :init)))

(setf (get dobot_bringup::ContinueScriptRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ContinueScriptRequest :datatype-) "dobot_bringup/ContinueScriptRequest")
(setf (get dobot_bringup::ContinueScriptRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::ContinueScriptResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ContinueScriptResponse :datatype-) "dobot_bringup/ContinueScriptResponse")
(setf (get dobot_bringup::ContinueScriptResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/ContinueScript "ca16cfbd5443ad97f6cc7ffd6bb67292")


