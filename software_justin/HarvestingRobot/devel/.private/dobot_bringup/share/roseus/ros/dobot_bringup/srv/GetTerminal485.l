;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetTerminal485)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetTerminal485 (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETTERMINAL485")
  (make-package "DOBOT_BRINGUP::GETTERMINAL485"))
(unless (find-package "DOBOT_BRINGUP::GETTERMINAL485REQUEST")
  (make-package "DOBOT_BRINGUP::GETTERMINAL485REQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETTERMINAL485RESPONSE")
  (make-package "DOBOT_BRINGUP::GETTERMINAL485RESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetTerminal485Request
  :super ros::object
  :slots ())

(defmethod dobot_bringup::GetTerminal485Request
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

(defclass dobot_bringup::GetTerminal485Response
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetTerminal485Response
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

(defclass dobot_bringup::GetTerminal485
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetTerminal485 :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetTerminal485 :datatype-) "dobot_bringup/GetTerminal485")
(setf (get dobot_bringup::GetTerminal485 :request) dobot_bringup::GetTerminal485Request)
(setf (get dobot_bringup::GetTerminal485 :response) dobot_bringup::GetTerminal485Response)

(defmethod dobot_bringup::GetTerminal485Request
  (:response () (instance dobot_bringup::GetTerminal485Response :init)))

(setf (get dobot_bringup::GetTerminal485Request :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetTerminal485Request :datatype-) "dobot_bringup/GetTerminal485Request")
(setf (get dobot_bringup::GetTerminal485Request :definition-)
      "
---
int32 res
")

(setf (get dobot_bringup::GetTerminal485Response :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetTerminal485Response :datatype-) "dobot_bringup/GetTerminal485Response")
(setf (get dobot_bringup::GetTerminal485Response :definition-)
      "
---
int32 res
")



(provide :dobot_bringup/GetTerminal485 "ca16cfbd5443ad97f6cc7ffd6bb67292")


