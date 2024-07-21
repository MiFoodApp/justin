;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::PauseScript)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'PauseScript (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::PAUSESCRIPT")
  (make-package "DOBOT_BRINGUP::PAUSESCRIPT"))
(unless (find-package "DOBOT_BRINGUP::PAUSESCRIPTREQUEST")
  (make-package "DOBOT_BRINGUP::PAUSESCRIPTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::PAUSESCRIPTRESPONSE")
  (make-package "DOBOT_BRINGUP::PAUSESCRIPTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::PauseScriptRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::PauseScriptRequest
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

(defclass dobot_bringup::PauseScriptResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::PauseScriptResponse
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

(defclass dobot_bringup::PauseScript
  :super ros::object
  :slots ())

(setf (get dobot_bringup::PauseScript :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PauseScript :datatype-) "dobot_bringup/PauseScript")
(setf (get dobot_bringup::PauseScript :request) dobot_bringup::PauseScriptRequest)
(setf (get dobot_bringup::PauseScript :response) dobot_bringup::PauseScriptResponse)

(defmethod dobot_bringup::PauseScriptRequest
  (:response () (instance dobot_bringup::PauseScriptResponse :init)))

(setf (get dobot_bringup::PauseScriptRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PauseScriptRequest :datatype-) "dobot_bringup/PauseScriptRequest")
(setf (get dobot_bringup::PauseScriptRequest :definition-)
      "
---
int32 res
")

(setf (get dobot_bringup::PauseScriptResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::PauseScriptResponse :datatype-) "dobot_bringup/PauseScriptResponse")
(setf (get dobot_bringup::PauseScriptResponse :definition-)
      "
---
int32 res
")



(provide :dobot_bringup/PauseScript "ca16cfbd5443ad97f6cc7ffd6bb67292")


