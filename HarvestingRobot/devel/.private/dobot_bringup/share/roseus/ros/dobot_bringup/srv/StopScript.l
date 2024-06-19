;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::StopScript)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'StopScript (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::STOPSCRIPT")
  (make-package "DOBOT_BRINGUP::STOPSCRIPT"))
(unless (find-package "DOBOT_BRINGUP::STOPSCRIPTREQUEST")
  (make-package "DOBOT_BRINGUP::STOPSCRIPTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::STOPSCRIPTRESPONSE")
  (make-package "DOBOT_BRINGUP::STOPSCRIPTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::StopScriptRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::StopScriptRequest
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

(defclass dobot_bringup::StopScriptResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::StopScriptResponse
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

(defclass dobot_bringup::StopScript
  :super ros::object
  :slots ())

(setf (get dobot_bringup::StopScript :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopScript :datatype-) "dobot_bringup/StopScript")
(setf (get dobot_bringup::StopScript :request) dobot_bringup::StopScriptRequest)
(setf (get dobot_bringup::StopScript :response) dobot_bringup::StopScriptResponse)

(defmethod dobot_bringup::StopScriptRequest
  (:response () (instance dobot_bringup::StopScriptResponse :init)))

(setf (get dobot_bringup::StopScriptRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopScriptRequest :datatype-) "dobot_bringup/StopScriptRequest")
(setf (get dobot_bringup::StopScriptRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::StopScriptResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopScriptResponse :datatype-) "dobot_bringup/StopScriptResponse")
(setf (get dobot_bringup::StopScriptResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/StopScript "ca16cfbd5443ad97f6cc7ffd6bb67292")


