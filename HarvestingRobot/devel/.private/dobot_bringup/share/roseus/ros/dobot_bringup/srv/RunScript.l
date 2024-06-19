;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RunScript)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RunScript (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RUNSCRIPT")
  (make-package "DOBOT_BRINGUP::RUNSCRIPT"))
(unless (find-package "DOBOT_BRINGUP::RUNSCRIPTREQUEST")
  (make-package "DOBOT_BRINGUP::RUNSCRIPTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RUNSCRIPTRESPONSE")
  (make-package "DOBOT_BRINGUP::RUNSCRIPTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RunScriptRequest
  :super ros::object
  :slots (_projectName ))

(defmethod dobot_bringup::RunScriptRequest
  (:init
   (&key
    ((:projectName __projectName) "")
    )
   (send-super :init)
   (setq _projectName (string __projectName))
   self)
  (:projectName
   (&optional __projectName)
   (if __projectName (setq _projectName __projectName)) _projectName)
  (:serialization-length
   ()
   (+
    ;; string _projectName
    4 (length _projectName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _projectName
       (write-long (length _projectName) s) (princ _projectName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _projectName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _projectName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::RunScriptResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::RunScriptResponse
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

(defclass dobot_bringup::RunScript
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RunScript :md5sum-) "7a897c62a8cb97cf0bd8a288103abd8a")
(setf (get dobot_bringup::RunScript :datatype-) "dobot_bringup/RunScript")
(setf (get dobot_bringup::RunScript :request) dobot_bringup::RunScriptRequest)
(setf (get dobot_bringup::RunScript :response) dobot_bringup::RunScriptResponse)

(defmethod dobot_bringup::RunScriptRequest
  (:response () (instance dobot_bringup::RunScriptResponse :init)))

(setf (get dobot_bringup::RunScriptRequest :md5sum-) "7a897c62a8cb97cf0bd8a288103abd8a")
(setf (get dobot_bringup::RunScriptRequest :datatype-) "dobot_bringup/RunScriptRequest")
(setf (get dobot_bringup::RunScriptRequest :definition-)
      "string projectName
---
int32 res
")

(setf (get dobot_bringup::RunScriptResponse :md5sum-) "7a897c62a8cb97cf0bd8a288103abd8a")
(setf (get dobot_bringup::RunScriptResponse :datatype-) "dobot_bringup/RunScriptResponse")
(setf (get dobot_bringup::RunScriptResponse :definition-)
      "string projectName
---
int32 res
")



(provide :dobot_bringup/RunScript "7a897c62a8cb97cf0bd8a288103abd8a")


