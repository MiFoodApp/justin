;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RelMovJ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RelMovJ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RELMOVJ")
  (make-package "DOBOT_BRINGUP::RELMOVJ"))
(unless (find-package "DOBOT_BRINGUP::RELMOVJREQUEST")
  (make-package "DOBOT_BRINGUP::RELMOVJREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RELMOVJRESPONSE")
  (make-package "DOBOT_BRINGUP::RELMOVJRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RelMovJRequest
  :super ros::object
  :slots (_offset1 _offset2 _offset3 _offset4 _offset5 _offset6 ))

(defmethod dobot_bringup::RelMovJRequest
  (:init
   (&key
    ((:offset1 __offset1) 0.0)
    ((:offset2 __offset2) 0.0)
    ((:offset3 __offset3) 0.0)
    ((:offset4 __offset4) 0.0)
    ((:offset5 __offset5) 0.0)
    ((:offset6 __offset6) 0.0)
    )
   (send-super :init)
   (setq _offset1 (float __offset1))
   (setq _offset2 (float __offset2))
   (setq _offset3 (float __offset3))
   (setq _offset4 (float __offset4))
   (setq _offset5 (float __offset5))
   (setq _offset6 (float __offset6))
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
   ;;
   self)
  )

(defclass dobot_bringup::RelMovJResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::RelMovJResponse
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

(defclass dobot_bringup::RelMovJ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RelMovJ :md5sum-) "e279c0ec95d750d32f1bcdc49940f3d6")
(setf (get dobot_bringup::RelMovJ :datatype-) "dobot_bringup/RelMovJ")
(setf (get dobot_bringup::RelMovJ :request) dobot_bringup::RelMovJRequest)
(setf (get dobot_bringup::RelMovJ :response) dobot_bringup::RelMovJResponse)

(defmethod dobot_bringup::RelMovJRequest
  (:response () (instance dobot_bringup::RelMovJResponse :init)))

(setf (get dobot_bringup::RelMovJRequest :md5sum-) "e279c0ec95d750d32f1bcdc49940f3d6")
(setf (get dobot_bringup::RelMovJRequest :datatype-) "dobot_bringup/RelMovJRequest")
(setf (get dobot_bringup::RelMovJRequest :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
---
int32 res
")

(setf (get dobot_bringup::RelMovJResponse :md5sum-) "e279c0ec95d750d32f1bcdc49940f3d6")
(setf (get dobot_bringup::RelMovJResponse :datatype-) "dobot_bringup/RelMovJResponse")
(setf (get dobot_bringup::RelMovJResponse :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
---
int32 res
")



(provide :dobot_bringup/RelMovJ "e279c0ec95d750d32f1bcdc49940f3d6")


