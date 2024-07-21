;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::TCPSpeed)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'TCPSpeed (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TCPSPEED")
  (make-package "DOBOT_BRINGUP::TCPSPEED"))
(unless (find-package "DOBOT_BRINGUP::TCPSPEEDREQUEST")
  (make-package "DOBOT_BRINGUP::TCPSPEEDREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TCPSPEEDRESPONSE")
  (make-package "DOBOT_BRINGUP::TCPSPEEDRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::TCPSpeedRequest
  :super ros::object
  :slots (_vt ))

(defmethod dobot_bringup::TCPSpeedRequest
  (:init
   (&key
    ((:vt __vt) 0)
    )
   (send-super :init)
   (setq _vt (round __vt))
   self)
  (:vt
   (&optional __vt)
   (if __vt (setq _vt __vt)) _vt)
  (:serialization-length
   ()
   (+
    ;; int32 _vt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vt
       (write-long _vt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vt
     (setq _vt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::TCPSpeedResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::TCPSpeedResponse
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

(defclass dobot_bringup::TCPSpeed
  :super ros::object
  :slots ())

(setf (get dobot_bringup::TCPSpeed :md5sum-) "a08759d5a79cc8511dea5815a6ac4c30")
(setf (get dobot_bringup::TCPSpeed :datatype-) "dobot_bringup/TCPSpeed")
(setf (get dobot_bringup::TCPSpeed :request) dobot_bringup::TCPSpeedRequest)
(setf (get dobot_bringup::TCPSpeed :response) dobot_bringup::TCPSpeedResponse)

(defmethod dobot_bringup::TCPSpeedRequest
  (:response () (instance dobot_bringup::TCPSpeedResponse :init)))

(setf (get dobot_bringup::TCPSpeedRequest :md5sum-) "a08759d5a79cc8511dea5815a6ac4c30")
(setf (get dobot_bringup::TCPSpeedRequest :datatype-) "dobot_bringup/TCPSpeedRequest")
(setf (get dobot_bringup::TCPSpeedRequest :definition-)
      "int32 vt
---
int32 res
")

(setf (get dobot_bringup::TCPSpeedResponse :md5sum-) "a08759d5a79cc8511dea5815a6ac4c30")
(setf (get dobot_bringup::TCPSpeedResponse :datatype-) "dobot_bringup/TCPSpeedResponse")
(setf (get dobot_bringup::TCPSpeedResponse :definition-)
      "int32 vt
---
int32 res
")



(provide :dobot_bringup/TCPSpeed "a08759d5a79cc8511dea5815a6ac4c30")


