;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ResetRobot)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ResetRobot (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RESETROBOT")
  (make-package "DOBOT_BRINGUP::RESETROBOT"))
(unless (find-package "DOBOT_BRINGUP::RESETROBOTREQUEST")
  (make-package "DOBOT_BRINGUP::RESETROBOTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RESETROBOTRESPONSE")
  (make-package "DOBOT_BRINGUP::RESETROBOTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ResetRobotRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::ResetRobotRequest
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

(defclass dobot_bringup::ResetRobotResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ResetRobotResponse
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

(defclass dobot_bringup::ResetRobot
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ResetRobot :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ResetRobot :datatype-) "dobot_bringup/ResetRobot")
(setf (get dobot_bringup::ResetRobot :request) dobot_bringup::ResetRobotRequest)
(setf (get dobot_bringup::ResetRobot :response) dobot_bringup::ResetRobotResponse)

(defmethod dobot_bringup::ResetRobotRequest
  (:response () (instance dobot_bringup::ResetRobotResponse :init)))

(setf (get dobot_bringup::ResetRobotRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ResetRobotRequest :datatype-) "dobot_bringup/ResetRobotRequest")
(setf (get dobot_bringup::ResetRobotRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::ResetRobotResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::ResetRobotResponse :datatype-) "dobot_bringup/ResetRobotResponse")
(setf (get dobot_bringup::ResetRobotResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/ResetRobot "ca16cfbd5443ad97f6cc7ffd6bb67292")


