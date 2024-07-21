;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Circle)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Circle (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::CIRCLE")
  (make-package "DOBOT_BRINGUP::CIRCLE"))
(unless (find-package "DOBOT_BRINGUP::CIRCLEREQUEST")
  (make-package "DOBOT_BRINGUP::CIRCLEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::CIRCLERESPONSE")
  (make-package "DOBOT_BRINGUP::CIRCLERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::CircleRequest
  :super ros::object
  :slots (_count _x1 _y1 _z1 _a1 _b1 _c1 _x2 _y2 _z2 _a2 _b2 _c2 _paramValue ))

(defmethod dobot_bringup::CircleRequest
  (:init
   (&key
    ((:count __count) 0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:z1 __z1) 0.0)
    ((:a1 __a1) 0.0)
    ((:b1 __b1) 0.0)
    ((:c1 __c1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:z2 __z2) 0.0)
    ((:a2 __a2) 0.0)
    ((:b2 __b2) 0.0)
    ((:c2 __c2) 0.0)
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _z1 (float __z1))
   (setq _a1 (float __a1))
   (setq _b1 (float __b1))
   (setq _c1 (float __c1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _z2 (float __z2))
   (setq _a2 (float __a2))
   (setq _b2 (float __b2))
   (setq _c2 (float __c2))
   (setq _paramValue __paramValue)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:b1
   (&optional __b1)
   (if __b1 (setq _b1 __b1)) _b1)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:z2
   (&optional __z2)
   (if __z2 (setq _z2 __z2)) _z2)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:b2
   (&optional __b2)
   (if __b2 (setq _b2 __b2)) _b2)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _z1
    8
    ;; float64 _a1
    8
    ;; float64 _b1
    8
    ;; float64 _c1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _z2
    8
    ;; float64 _a2
    8
    ;; float64 _b2
    8
    ;; float64 _c2
    8
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b1
       (sys::poke _b1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c1
       (sys::poke _c1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z2
       (sys::poke _z2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b2
       (sys::poke _b2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c2
       (sys::poke _c2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z1
     (setq _z1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a1
     (setq _a1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b1
     (setq _b1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c1
     (setq _c1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z2
     (setq _z2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a2
     (setq _a2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b2
     (setq _b2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c2
     (setq _c2 (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(defclass dobot_bringup::CircleResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::CircleResponse
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

(defclass dobot_bringup::Circle
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Circle :md5sum-) "595948d4551fca3138762c937ac2d5fd")
(setf (get dobot_bringup::Circle :datatype-) "dobot_bringup/Circle")
(setf (get dobot_bringup::Circle :request) dobot_bringup::CircleRequest)
(setf (get dobot_bringup::Circle :response) dobot_bringup::CircleResponse)

(defmethod dobot_bringup::CircleRequest
  (:response () (instance dobot_bringup::CircleResponse :init)))

(setf (get dobot_bringup::CircleRequest :md5sum-) "595948d4551fca3138762c937ac2d5fd")
(setf (get dobot_bringup::CircleRequest :datatype-) "dobot_bringup/CircleRequest")
(setf (get dobot_bringup::CircleRequest :definition-)
      "int32 count
float64 x1
float64 y1
float64 z1
float64 a1
float64 b1
float64 c1

float64 x2
float64 y2
float64 z2
float64 a2
float64 b2
float64 c2
string[] paramValue

---

int32 res
")

(setf (get dobot_bringup::CircleResponse :md5sum-) "595948d4551fca3138762c937ac2d5fd")
(setf (get dobot_bringup::CircleResponse :datatype-) "dobot_bringup/CircleResponse")
(setf (get dobot_bringup::CircleResponse :definition-)
      "int32 count
float64 x1
float64 y1
float64 z1
float64 a1
float64 b1
float64 c1

float64 x2
float64 y2
float64 z2
float64 a2
float64 b2
float64 c2
string[] paramValue

---

int32 res
")



(provide :dobot_bringup/Circle "595948d4551fca3138762c937ac2d5fd")


