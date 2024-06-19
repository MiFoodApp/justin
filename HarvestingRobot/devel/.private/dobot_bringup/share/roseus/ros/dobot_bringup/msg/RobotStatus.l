;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RobotStatus)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RobotStatus (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::ROBOTSTATUS")
  (make-package "DOBOT_BRINGUP::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass dobot_bringup::RobotStatus
  :super ros::object
  :slots (_is_enable _is_connected ))

(defmethod dobot_bringup::RobotStatus
  (:init
   (&key
    ((:is_enable __is_enable) nil)
    ((:is_connected __is_connected) nil)
    )
   (send-super :init)
   (setq _is_enable __is_enable)
   (setq _is_connected __is_connected)
   self)
  (:is_enable
   (&optional (__is_enable :null))
   (if (not (eq __is_enable :null)) (setq _is_enable __is_enable)) _is_enable)
  (:is_connected
   (&optional (__is_connected :null))
   (if (not (eq __is_connected :null)) (setq _is_connected __is_connected)) _is_connected)
  (:serialization-length
   ()
   (+
    ;; bool _is_enable
    1
    ;; bool _is_connected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_enable
       (if _is_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_connected
       (if _is_connected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_enable
     (setq _is_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_connected
     (setq _is_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dobot_bringup::RobotStatus :md5sum-) "03c2e6f26397d687a7b9b9208ea5a445")
(setf (get dobot_bringup::RobotStatus :datatype-) "dobot_bringup/RobotStatus")
(setf (get dobot_bringup::RobotStatus :definition-)
      "bool is_enable
bool is_connected

")



(provide :dobot_bringup/RobotStatus "03c2e6f26397d687a7b9b9208ea5a445")


