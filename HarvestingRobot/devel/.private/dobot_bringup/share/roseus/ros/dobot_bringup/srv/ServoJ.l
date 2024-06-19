;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ServoJ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ServoJ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SERVOJ")
  (make-package "DOBOT_BRINGUP::SERVOJ"))
(unless (find-package "DOBOT_BRINGUP::SERVOJREQUEST")
  (make-package "DOBOT_BRINGUP::SERVOJREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SERVOJRESPONSE")
  (make-package "DOBOT_BRINGUP::SERVOJRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ServoJRequest
  :super ros::object
  :slots (_offset1 _offset2 _offset3 _offset4 _offset5 _offset6 _t _lookahead_time _gain ))

(defmethod dobot_bringup::ServoJRequest
  (:init
   (&key
    ((:offset1 __offset1) 0.0)
    ((:offset2 __offset2) 0.0)
    ((:offset3 __offset3) 0.0)
    ((:offset4 __offset4) 0.0)
    ((:offset5 __offset5) 0.0)
    ((:offset6 __offset6) 0.0)
    ((:t __t) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lookahead_time __lookahead_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gain __gain) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _offset1 (float __offset1))
   (setq _offset2 (float __offset2))
   (setq _offset3 (float __offset3))
   (setq _offset4 (float __offset4))
   (setq _offset5 (float __offset5))
   (setq _offset6 (float __offset6))
   (setq _t __t)
   (setq _lookahead_time __lookahead_time)
   (setq _gain __gain)
   self)
  (:offset1
   (&optional __offset1)
   (if __offset1 (setq _offset1 __offset1)) _offset1)
  (:offset2
   (&optional __offset2)
   (if __offset2 (setq _offset2 __offset2)) _offset2)
  (:offset3
   (&optional __offset3)
   (if __offset3 (setq _offset3 __offset3)) _offset3)
  (:offset4
   (&optional __offset4)
   (if __offset4 (setq _offset4 __offset4)) _offset4)
  (:offset5
   (&optional __offset5)
   (if __offset5 (setq _offset5 __offset5)) _offset5)
  (:offset6
   (&optional __offset6)
   (if __offset6 (setq _offset6 __offset6)) _offset6)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:lookahead_time
   (&optional __lookahead_time)
   (if __lookahead_time (setq _lookahead_time __lookahead_time)) _lookahead_time)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; float64 _offset1
    8
    ;; float64 _offset2
    8
    ;; float64 _offset3
    8
    ;; float64 _offset4
    8
    ;; float64 _offset5
    8
    ;; float64 _offset6
    8
    ;; float64[] _t
    (* 8    (length _t)) 4
    ;; float64[] _lookahead_time
    (* 8    (length _lookahead_time)) 4
    ;; float64[] _gain
    (* 8    (length _gain)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _offset1
       (sys::poke _offset1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset2
       (sys::poke _offset2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset3
       (sys::poke _offset3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset4
       (sys::poke _offset4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset5
       (sys::poke _offset5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset6
       (sys::poke _offset6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _t
     (write-long (length _t) s)
     (dotimes (i (length _t))
       (sys::poke (elt _t i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _lookahead_time
     (write-long (length _lookahead_time) s)
     (dotimes (i (length _lookahead_time))
       (sys::poke (elt _lookahead_time i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gain
     (write-long (length _gain) s)
     (dotimes (i (length _gain))
       (sys::poke (elt _gain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _offset1
     (setq _offset1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset2
     (setq _offset2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset3
     (setq _offset3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset4
     (setq _offset4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset5
     (setq _offset5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset6
     (setq _offset6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _t
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _lookahead_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lookahead_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lookahead_time i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::ServoJResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ServoJResponse
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

(defclass dobot_bringup::ServoJ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ServoJ :md5sum-) "b3602db62aec670111f5df6ff1c628d9")
(setf (get dobot_bringup::ServoJ :datatype-) "dobot_bringup/ServoJ")
(setf (get dobot_bringup::ServoJ :request) dobot_bringup::ServoJRequest)
(setf (get dobot_bringup::ServoJ :response) dobot_bringup::ServoJResponse)

(defmethod dobot_bringup::ServoJRequest
  (:response () (instance dobot_bringup::ServoJResponse :init)))

(setf (get dobot_bringup::ServoJRequest :md5sum-) "b3602db62aec670111f5df6ff1c628d9")
(setf (get dobot_bringup::ServoJRequest :datatype-) "dobot_bringup/ServoJRequest")
(setf (get dobot_bringup::ServoJRequest :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
float64[] t
float64[] lookahead_time
float64[] gain
---
int32 res
")

(setf (get dobot_bringup::ServoJResponse :md5sum-) "b3602db62aec670111f5df6ff1c628d9")
(setf (get dobot_bringup::ServoJResponse :datatype-) "dobot_bringup/ServoJResponse")
(setf (get dobot_bringup::ServoJResponse :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
float64[] t
float64[] lookahead_time
float64[] gain
---
int32 res
")



(provide :dobot_bringup/ServoJ "b3602db62aec670111f5df6ff1c628d9")


