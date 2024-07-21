;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RobotMode)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RobotMode (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::ROBOTMODE")
  (make-package "DOBOT_BRINGUP::ROBOTMODE"))
(unless (find-package "DOBOT_BRINGUP::ROBOTMODEREQUEST")
  (make-package "DOBOT_BRINGUP::ROBOTMODEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::ROBOTMODERESPONSE")
  (make-package "DOBOT_BRINGUP::ROBOTMODERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RobotModeRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::RobotModeRequest
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

(defclass dobot_bringup::RobotModeResponse
  :super ros::object
  :slots (_mode _res ))

(defmethod dobot_bringup::RobotModeResponse
  (:init
   (&key
    ((:mode __mode) 0)
    ((:res __res) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _res (round __res))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; int32 _res
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _res
       (write-long _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _res
     (setq _res (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::RobotMode
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RobotMode :md5sum-) "6c9e8010af56fb13be385391b43d24ba")
(setf (get dobot_bringup::RobotMode :datatype-) "dobot_bringup/RobotMode")
(setf (get dobot_bringup::RobotMode :request) dobot_bringup::RobotModeRequest)
(setf (get dobot_bringup::RobotMode :response) dobot_bringup::RobotModeResponse)

(defmethod dobot_bringup::RobotModeRequest
  (:response () (instance dobot_bringup::RobotModeResponse :init)))

(setf (get dobot_bringup::RobotModeRequest :md5sum-) "6c9e8010af56fb13be385391b43d24ba")
(setf (get dobot_bringup::RobotModeRequest :datatype-) "dobot_bringup/RobotModeRequest")
(setf (get dobot_bringup::RobotModeRequest :definition-)
      "---
int32 mode
int32 res
")

(setf (get dobot_bringup::RobotModeResponse :md5sum-) "6c9e8010af56fb13be385391b43d24ba")
(setf (get dobot_bringup::RobotModeResponse :datatype-) "dobot_bringup/RobotModeResponse")
(setf (get dobot_bringup::RobotModeResponse :definition-)
      "---
int32 mode
int32 res
")



(provide :dobot_bringup/RobotMode "6c9e8010af56fb13be385391b43d24ba")


