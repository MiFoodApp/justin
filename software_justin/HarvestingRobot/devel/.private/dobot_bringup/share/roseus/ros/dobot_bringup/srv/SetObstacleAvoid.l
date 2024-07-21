;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetObstacleAvoid)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetObstacleAvoid (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETOBSTACLEAVOID")
  (make-package "DOBOT_BRINGUP::SETOBSTACLEAVOID"))
(unless (find-package "DOBOT_BRINGUP::SETOBSTACLEAVOIDREQUEST")
  (make-package "DOBOT_BRINGUP::SETOBSTACLEAVOIDREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETOBSTACLEAVOIDRESPONSE")
  (make-package "DOBOT_BRINGUP::SETOBSTACLEAVOIDRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetObstacleAvoidRequest
  :super ros::object
  :slots (_status ))

(defmethod dobot_bringup::SetObstacleAvoidRequest
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetObstacleAvoidResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetObstacleAvoidResponse
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

(defclass dobot_bringup::SetObstacleAvoid
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetObstacleAvoid :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetObstacleAvoid :datatype-) "dobot_bringup/SetObstacleAvoid")
(setf (get dobot_bringup::SetObstacleAvoid :request) dobot_bringup::SetObstacleAvoidRequest)
(setf (get dobot_bringup::SetObstacleAvoid :response) dobot_bringup::SetObstacleAvoidResponse)

(defmethod dobot_bringup::SetObstacleAvoidRequest
  (:response () (instance dobot_bringup::SetObstacleAvoidResponse :init)))

(setf (get dobot_bringup::SetObstacleAvoidRequest :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetObstacleAvoidRequest :datatype-) "dobot_bringup/SetObstacleAvoidRequest")
(setf (get dobot_bringup::SetObstacleAvoidRequest :definition-)
      "int32 status
---
int32 res
")

(setf (get dobot_bringup::SetObstacleAvoidResponse :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetObstacleAvoidResponse :datatype-) "dobot_bringup/SetObstacleAvoidResponse")
(setf (get dobot_bringup::SetObstacleAvoidResponse :definition-)
      "int32 status
---
int32 res
")



(provide :dobot_bringup/SetObstacleAvoid "e9885118d8baa0e46bd047b6deaa3f81")


