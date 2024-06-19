;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetTraceStartPose)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetTraceStartPose (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETTRACESTARTPOSE")
  (make-package "DOBOT_BRINGUP::GETTRACESTARTPOSE"))
(unless (find-package "DOBOT_BRINGUP::GETTRACESTARTPOSEREQUEST")
  (make-package "DOBOT_BRINGUP::GETTRACESTARTPOSEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETTRACESTARTPOSERESPONSE")
  (make-package "DOBOT_BRINGUP::GETTRACESTARTPOSERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetTraceStartPoseRequest
  :super ros::object
  :slots (_traceName ))

(defmethod dobot_bringup::GetTraceStartPoseRequest
  (:init
   (&key
    ((:traceName __traceName) "")
    )
   (send-super :init)
   (setq _traceName (string __traceName))
   self)
  (:traceName
   (&optional __traceName)
   (if __traceName (setq _traceName __traceName)) _traceName)
  (:serialization-length
   ()
   (+
    ;; string _traceName
    4 (length _traceName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _traceName
       (write-long (length _traceName) s) (princ _traceName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _traceName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _traceName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::GetTraceStartPoseResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetTraceStartPoseResponse
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

(defclass dobot_bringup::GetTraceStartPose
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetTraceStartPose :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetTraceStartPose :datatype-) "dobot_bringup/GetTraceStartPose")
(setf (get dobot_bringup::GetTraceStartPose :request) dobot_bringup::GetTraceStartPoseRequest)
(setf (get dobot_bringup::GetTraceStartPose :response) dobot_bringup::GetTraceStartPoseResponse)

(defmethod dobot_bringup::GetTraceStartPoseRequest
  (:response () (instance dobot_bringup::GetTraceStartPoseResponse :init)))

(setf (get dobot_bringup::GetTraceStartPoseRequest :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetTraceStartPoseRequest :datatype-) "dobot_bringup/GetTraceStartPoseRequest")
(setf (get dobot_bringup::GetTraceStartPoseRequest :definition-)
      "string  traceName
---
int32 res
")

(setf (get dobot_bringup::GetTraceStartPoseResponse :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetTraceStartPoseResponse :datatype-) "dobot_bringup/GetTraceStartPoseResponse")
(setf (get dobot_bringup::GetTraceStartPoseResponse :definition-)
      "string  traceName
---
int32 res
")



(provide :dobot_bringup/GetTraceStartPose "82df6582f8dcb92a8fcd749010d9e909")


