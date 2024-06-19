;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetPathStartPose)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetPathStartPose (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETPATHSTARTPOSE")
  (make-package "DOBOT_BRINGUP::GETPATHSTARTPOSE"))
(unless (find-package "DOBOT_BRINGUP::GETPATHSTARTPOSEREQUEST")
  (make-package "DOBOT_BRINGUP::GETPATHSTARTPOSEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETPATHSTARTPOSERESPONSE")
  (make-package "DOBOT_BRINGUP::GETPATHSTARTPOSERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetPathStartPoseRequest
  :super ros::object
  :slots (_traceName ))

(defmethod dobot_bringup::GetPathStartPoseRequest
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

(defclass dobot_bringup::GetPathStartPoseResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetPathStartPoseResponse
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

(defclass dobot_bringup::GetPathStartPose
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetPathStartPose :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetPathStartPose :datatype-) "dobot_bringup/GetPathStartPose")
(setf (get dobot_bringup::GetPathStartPose :request) dobot_bringup::GetPathStartPoseRequest)
(setf (get dobot_bringup::GetPathStartPose :response) dobot_bringup::GetPathStartPoseResponse)

(defmethod dobot_bringup::GetPathStartPoseRequest
  (:response () (instance dobot_bringup::GetPathStartPoseResponse :init)))

(setf (get dobot_bringup::GetPathStartPoseRequest :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetPathStartPoseRequest :datatype-) "dobot_bringup/GetPathStartPoseRequest")
(setf (get dobot_bringup::GetPathStartPoseRequest :definition-)
      "string  traceName
---
int32 res
")

(setf (get dobot_bringup::GetPathStartPoseResponse :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::GetPathStartPoseResponse :datatype-) "dobot_bringup/GetPathStartPoseResponse")
(setf (get dobot_bringup::GetPathStartPoseResponse :definition-)
      "string  traceName
---
int32 res
")



(provide :dobot_bringup/GetPathStartPose "82df6582f8dcb92a8fcd749010d9e909")


