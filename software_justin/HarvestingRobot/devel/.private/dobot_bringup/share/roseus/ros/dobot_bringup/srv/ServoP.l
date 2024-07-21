;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ServoP)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ServoP (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SERVOP")
  (make-package "DOBOT_BRINGUP::SERVOP"))
(unless (find-package "DOBOT_BRINGUP::SERVOPREQUEST")
  (make-package "DOBOT_BRINGUP::SERVOPREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SERVOPRESPONSE")
  (make-package "DOBOT_BRINGUP::SERVOPRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ServoPRequest
  :super ros::object
  :slots (_x _y _z _a _b _c ))

(defmethod dobot_bringup::ServoPRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
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
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
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
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dobot_bringup::ServoPResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ServoPResponse
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

(defclass dobot_bringup::ServoP
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ServoP :md5sum-) "4d5bd0c11266916c52206a250a837c3f")
(setf (get dobot_bringup::ServoP :datatype-) "dobot_bringup/ServoP")
(setf (get dobot_bringup::ServoP :request) dobot_bringup::ServoPRequest)
(setf (get dobot_bringup::ServoP :response) dobot_bringup::ServoPResponse)

(defmethod dobot_bringup::ServoPRequest
  (:response () (instance dobot_bringup::ServoPResponse :init)))

(setf (get dobot_bringup::ServoPRequest :md5sum-) "4d5bd0c11266916c52206a250a837c3f")
(setf (get dobot_bringup::ServoPRequest :datatype-) "dobot_bringup/ServoPRequest")
(setf (get dobot_bringup::ServoPRequest :definition-)
      "float64 x
float64 y
float64 z
float64 a
float64 b
float64 c
---
int32 res
")

(setf (get dobot_bringup::ServoPResponse :md5sum-) "4d5bd0c11266916c52206a250a837c3f")
(setf (get dobot_bringup::ServoPResponse :datatype-) "dobot_bringup/ServoPResponse")
(setf (get dobot_bringup::ServoPResponse :definition-)
      "float64 x
float64 y
float64 z
float64 a
float64 b
float64 c
---
int32 res
")



(provide :dobot_bringup/ServoP "4d5bd0c11266916c52206a250a837c3f")


