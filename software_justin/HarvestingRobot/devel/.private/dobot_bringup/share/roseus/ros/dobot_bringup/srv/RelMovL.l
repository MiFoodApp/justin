;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RelMovL)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RelMovL (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RELMOVL")
  (make-package "DOBOT_BRINGUP::RELMOVL"))
(unless (find-package "DOBOT_BRINGUP::RELMOVLREQUEST")
  (make-package "DOBOT_BRINGUP::RELMOVLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RELMOVLRESPONSE")
  (make-package "DOBOT_BRINGUP::RELMOVLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RelMovLRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod dobot_bringup::RelMovLRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dobot_bringup::RelMovLResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::RelMovLResponse
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

(defclass dobot_bringup::RelMovL
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RelMovL :md5sum-) "78b4c768c0737ce432fc1dbbdd67429f")
(setf (get dobot_bringup::RelMovL :datatype-) "dobot_bringup/RelMovL")
(setf (get dobot_bringup::RelMovL :request) dobot_bringup::RelMovLRequest)
(setf (get dobot_bringup::RelMovL :response) dobot_bringup::RelMovLResponse)

(defmethod dobot_bringup::RelMovLRequest
  (:response () (instance dobot_bringup::RelMovLResponse :init)))

(setf (get dobot_bringup::RelMovLRequest :md5sum-) "78b4c768c0737ce432fc1dbbdd67429f")
(setf (get dobot_bringup::RelMovLRequest :datatype-) "dobot_bringup/RelMovLRequest")
(setf (get dobot_bringup::RelMovLRequest :definition-)
      "float64 x
float64 y
float64 z
---
int32 res
")

(setf (get dobot_bringup::RelMovLResponse :md5sum-) "78b4c768c0737ce432fc1dbbdd67429f")
(setf (get dobot_bringup::RelMovLResponse :datatype-) "dobot_bringup/RelMovLResponse")
(setf (get dobot_bringup::RelMovLResponse :definition-)
      "float64 x
float64 y
float64 z
---
int32 res
")



(provide :dobot_bringup/RelMovL "78b4c768c0737ce432fc1dbbdd67429f")


