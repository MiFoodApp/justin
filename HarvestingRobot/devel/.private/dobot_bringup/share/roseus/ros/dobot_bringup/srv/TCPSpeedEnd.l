;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::TCPSpeedEnd)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'TCPSpeedEnd (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TCPSPEEDEND")
  (make-package "DOBOT_BRINGUP::TCPSPEEDEND"))
(unless (find-package "DOBOT_BRINGUP::TCPSPEEDENDREQUEST")
  (make-package "DOBOT_BRINGUP::TCPSPEEDENDREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TCPSPEEDENDRESPONSE")
  (make-package "DOBOT_BRINGUP::TCPSPEEDENDRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::TCPSpeedEndRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::TCPSpeedEndRequest
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

(defclass dobot_bringup::TCPSpeedEndResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::TCPSpeedEndResponse
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

(defclass dobot_bringup::TCPSpeedEnd
  :super ros::object
  :slots ())

(setf (get dobot_bringup::TCPSpeedEnd :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::TCPSpeedEnd :datatype-) "dobot_bringup/TCPSpeedEnd")
(setf (get dobot_bringup::TCPSpeedEnd :request) dobot_bringup::TCPSpeedEndRequest)
(setf (get dobot_bringup::TCPSpeedEnd :response) dobot_bringup::TCPSpeedEndResponse)

(defmethod dobot_bringup::TCPSpeedEndRequest
  (:response () (instance dobot_bringup::TCPSpeedEndResponse :init)))

(setf (get dobot_bringup::TCPSpeedEndRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::TCPSpeedEndRequest :datatype-) "dobot_bringup/TCPSpeedEndRequest")
(setf (get dobot_bringup::TCPSpeedEndRequest :definition-)
      "
---
int32 res
")

(setf (get dobot_bringup::TCPSpeedEndResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::TCPSpeedEndResponse :datatype-) "dobot_bringup/TCPSpeedEndResponse")
(setf (get dobot_bringup::TCPSpeedEndResponse :definition-)
      "
---
int32 res
")



(provide :dobot_bringup/TCPSpeedEnd "ca16cfbd5443ad97f6cc7ffd6bb67292")


