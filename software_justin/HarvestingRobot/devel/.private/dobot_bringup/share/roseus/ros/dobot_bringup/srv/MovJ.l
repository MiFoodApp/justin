;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::MovJ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'MovJ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::MOVJ")
  (make-package "DOBOT_BRINGUP::MOVJ"))
(unless (find-package "DOBOT_BRINGUP::MOVJREQUEST")
  (make-package "DOBOT_BRINGUP::MOVJREQUEST"))
(unless (find-package "DOBOT_BRINGUP::MOVJRESPONSE")
  (make-package "DOBOT_BRINGUP::MOVJRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::MovJRequest
  :super ros::object
  :slots (_x _y _z _a _b _c _paramValue ))

(defmethod dobot_bringup::MovJRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _paramValue __paramValue)
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
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
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
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
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
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
       )
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
   ;; string[] _paramValue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paramValue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paramValue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dobot_bringup::MovJResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::MovJResponse
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

(defclass dobot_bringup::MovJ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::MovJ :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovJ :datatype-) "dobot_bringup/MovJ")
(setf (get dobot_bringup::MovJ :request) dobot_bringup::MovJRequest)
(setf (get dobot_bringup::MovJ :response) dobot_bringup::MovJResponse)

(defmethod dobot_bringup::MovJRequest
  (:response () (instance dobot_bringup::MovJResponse :init)))

(setf (get dobot_bringup::MovJRequest :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovJRequest :datatype-) "dobot_bringup/MovJRequest")
(setf (get dobot_bringup::MovJRequest :definition-)
      "float64 x
float64 y
float64 z
float64 a
float64 b
float64 c
string[] paramValue
---
int32 res
")

(setf (get dobot_bringup::MovJResponse :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovJResponse :datatype-) "dobot_bringup/MovJResponse")
(setf (get dobot_bringup::MovJResponse :definition-)
      "float64 x
float64 y
float64 z
float64 a
float64 b
float64 c
string[] paramValue
---
int32 res
")



(provide :dobot_bringup/MovJ "4c865d064beeb78c6b96e5e5798d8d9f")


