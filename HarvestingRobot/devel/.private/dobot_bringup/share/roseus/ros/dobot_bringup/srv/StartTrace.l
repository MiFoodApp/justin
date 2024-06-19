;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::StartTrace)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'StartTrace (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::STARTTRACE")
  (make-package "DOBOT_BRINGUP::STARTTRACE"))
(unless (find-package "DOBOT_BRINGUP::STARTTRACEREQUEST")
  (make-package "DOBOT_BRINGUP::STARTTRACEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::STARTTRACERESPONSE")
  (make-package "DOBOT_BRINGUP::STARTTRACERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::StartTraceRequest
  :super ros::object
  :slots (_trace_name ))

(defmethod dobot_bringup::StartTraceRequest
  (:init
   (&key
    ((:trace_name __trace_name) "")
    )
   (send-super :init)
   (setq _trace_name (string __trace_name))
   self)
  (:trace_name
   (&optional __trace_name)
   (if __trace_name (setq _trace_name __trace_name)) _trace_name)
  (:serialization-length
   ()
   (+
    ;; string _trace_name
    4 (length _trace_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _trace_name
       (write-long (length _trace_name) s) (princ _trace_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _trace_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trace_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::StartTraceResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::StartTraceResponse
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

(defclass dobot_bringup::StartTrace
  :super ros::object
  :slots ())

(setf (get dobot_bringup::StartTrace :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartTrace :datatype-) "dobot_bringup/StartTrace")
(setf (get dobot_bringup::StartTrace :request) dobot_bringup::StartTraceRequest)
(setf (get dobot_bringup::StartTrace :response) dobot_bringup::StartTraceResponse)

(defmethod dobot_bringup::StartTraceRequest
  (:response () (instance dobot_bringup::StartTraceResponse :init)))

(setf (get dobot_bringup::StartTraceRequest :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartTraceRequest :datatype-) "dobot_bringup/StartTraceRequest")
(setf (get dobot_bringup::StartTraceRequest :definition-)
      "string trace_name
---
int32 res
")

(setf (get dobot_bringup::StartTraceResponse :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartTraceResponse :datatype-) "dobot_bringup/StartTraceResponse")
(setf (get dobot_bringup::StartTraceResponse :definition-)
      "string trace_name
---
int32 res
")



(provide :dobot_bringup/StartTrace "7873158229ecddf2dbfeddf339853b82")


