;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::StartFCTrace)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'StartFCTrace (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::STARTFCTRACE")
  (make-package "DOBOT_BRINGUP::STARTFCTRACE"))
(unless (find-package "DOBOT_BRINGUP::STARTFCTRACEREQUEST")
  (make-package "DOBOT_BRINGUP::STARTFCTRACEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::STARTFCTRACERESPONSE")
  (make-package "DOBOT_BRINGUP::STARTFCTRACERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::StartFCTraceRequest
  :super ros::object
  :slots (_trace_name ))

(defmethod dobot_bringup::StartFCTraceRequest
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

(defclass dobot_bringup::StartFCTraceResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::StartFCTraceResponse
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

(defclass dobot_bringup::StartFCTrace
  :super ros::object
  :slots ())

(setf (get dobot_bringup::StartFCTrace :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartFCTrace :datatype-) "dobot_bringup/StartFCTrace")
(setf (get dobot_bringup::StartFCTrace :request) dobot_bringup::StartFCTraceRequest)
(setf (get dobot_bringup::StartFCTrace :response) dobot_bringup::StartFCTraceResponse)

(defmethod dobot_bringup::StartFCTraceRequest
  (:response () (instance dobot_bringup::StartFCTraceResponse :init)))

(setf (get dobot_bringup::StartFCTraceRequest :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartFCTraceRequest :datatype-) "dobot_bringup/StartFCTraceRequest")
(setf (get dobot_bringup::StartFCTraceRequest :definition-)
      "string trace_name
---
int32 res
")

(setf (get dobot_bringup::StartFCTraceResponse :md5sum-) "7873158229ecddf2dbfeddf339853b82")
(setf (get dobot_bringup::StartFCTraceResponse :datatype-) "dobot_bringup/StartFCTraceResponse")
(setf (get dobot_bringup::StartFCTraceResponse :definition-)
      "string trace_name
---
int32 res
")



(provide :dobot_bringup/StartFCTrace "7873158229ecddf2dbfeddf339853b82")


