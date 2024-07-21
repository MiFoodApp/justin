;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::HandleTrajPoints)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'HandleTrajPoints (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::HANDLETRAJPOINTS")
  (make-package "DOBOT_BRINGUP::HANDLETRAJPOINTS"))
(unless (find-package "DOBOT_BRINGUP::HANDLETRAJPOINTSREQUEST")
  (make-package "DOBOT_BRINGUP::HANDLETRAJPOINTSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::HANDLETRAJPOINTSRESPONSE")
  (make-package "DOBOT_BRINGUP::HANDLETRAJPOINTSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::HandleTrajPointsRequest
  :super ros::object
  :slots (_traceName ))

(defmethod dobot_bringup::HandleTrajPointsRequest
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

(defclass dobot_bringup::HandleTrajPointsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::HandleTrajPointsResponse
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

(defclass dobot_bringup::HandleTrajPoints
  :super ros::object
  :slots ())

(setf (get dobot_bringup::HandleTrajPoints :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::HandleTrajPoints :datatype-) "dobot_bringup/HandleTrajPoints")
(setf (get dobot_bringup::HandleTrajPoints :request) dobot_bringup::HandleTrajPointsRequest)
(setf (get dobot_bringup::HandleTrajPoints :response) dobot_bringup::HandleTrajPointsResponse)

(defmethod dobot_bringup::HandleTrajPointsRequest
  (:response () (instance dobot_bringup::HandleTrajPointsResponse :init)))

(setf (get dobot_bringup::HandleTrajPointsRequest :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::HandleTrajPointsRequest :datatype-) "dobot_bringup/HandleTrajPointsRequest")
(setf (get dobot_bringup::HandleTrajPointsRequest :definition-)
      "string  traceName
---
int32 res
")

(setf (get dobot_bringup::HandleTrajPointsResponse :md5sum-) "82df6582f8dcb92a8fcd749010d9e909")
(setf (get dobot_bringup::HandleTrajPointsResponse :datatype-) "dobot_bringup/HandleTrajPointsResponse")
(setf (get dobot_bringup::HandleTrajPointsResponse :definition-)
      "string  traceName
---
int32 res
")



(provide :dobot_bringup/HandleTrajPoints "82df6582f8dcb92a8fcd749010d9e909")


