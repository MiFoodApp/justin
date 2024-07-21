;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::StopmoveJog)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'StopmoveJog (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::STOPMOVEJOG")
  (make-package "DOBOT_BRINGUP::STOPMOVEJOG"))
(unless (find-package "DOBOT_BRINGUP::STOPMOVEJOGREQUEST")
  (make-package "DOBOT_BRINGUP::STOPMOVEJOGREQUEST"))
(unless (find-package "DOBOT_BRINGUP::STOPMOVEJOGRESPONSE")
  (make-package "DOBOT_BRINGUP::STOPMOVEJOGRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::StopmoveJogRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::StopmoveJogRequest
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

(defclass dobot_bringup::StopmoveJogResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::StopmoveJogResponse
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

(defclass dobot_bringup::StopmoveJog
  :super ros::object
  :slots ())

(setf (get dobot_bringup::StopmoveJog :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopmoveJog :datatype-) "dobot_bringup/StopmoveJog")
(setf (get dobot_bringup::StopmoveJog :request) dobot_bringup::StopmoveJogRequest)
(setf (get dobot_bringup::StopmoveJog :response) dobot_bringup::StopmoveJogResponse)

(defmethod dobot_bringup::StopmoveJogRequest
  (:response () (instance dobot_bringup::StopmoveJogResponse :init)))

(setf (get dobot_bringup::StopmoveJogRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopmoveJogRequest :datatype-) "dobot_bringup/StopmoveJogRequest")
(setf (get dobot_bringup::StopmoveJogRequest :definition-)
      "---
int32 res
")

(setf (get dobot_bringup::StopmoveJogResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::StopmoveJogResponse :datatype-) "dobot_bringup/StopmoveJogResponse")
(setf (get dobot_bringup::StopmoveJogResponse :definition-)
      "---
int32 res
")



(provide :dobot_bringup/StopmoveJog "ca16cfbd5443ad97f6cc7ffd6bb67292")


