;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::MovL)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'MovL (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::MOVL")
  (make-package "DOBOT_BRINGUP::MOVL"))
(unless (find-package "DOBOT_BRINGUP::MOVLREQUEST")
  (make-package "DOBOT_BRINGUP::MOVLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::MOVLRESPONSE")
  (make-package "DOBOT_BRINGUP::MOVLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::MovLRequest
  :super ros::object
  :slots (_x _y _z _a _b _c _paramValue ))

(defmethod dobot_bringup::MovLRequest
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

(defclass dobot_bringup::MovLResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::MovLResponse
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

(defclass dobot_bringup::MovL
  :super ros::object
  :slots ())

(setf (get dobot_bringup::MovL :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovL :datatype-) "dobot_bringup/MovL")
(setf (get dobot_bringup::MovL :request) dobot_bringup::MovLRequest)
(setf (get dobot_bringup::MovL :response) dobot_bringup::MovLResponse)

(defmethod dobot_bringup::MovLRequest
  (:response () (instance dobot_bringup::MovLResponse :init)))

(setf (get dobot_bringup::MovLRequest :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovLRequest :datatype-) "dobot_bringup/MovLRequest")
(setf (get dobot_bringup::MovLRequest :definition-)
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

(setf (get dobot_bringup::MovLResponse :md5sum-) "4c865d064beeb78c6b96e5e5798d8d9f")
(setf (get dobot_bringup::MovLResponse :datatype-) "dobot_bringup/MovLResponse")
(setf (get dobot_bringup::MovLResponse :definition-)
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



(provide :dobot_bringup/MovL "4c865d064beeb78c6b96e5e5798d8d9f")


