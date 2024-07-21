;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RelJointMovJ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RelJointMovJ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RELJOINTMOVJ")
  (make-package "DOBOT_BRINGUP::RELJOINTMOVJ"))
(unless (find-package "DOBOT_BRINGUP::RELJOINTMOVJREQUEST")
  (make-package "DOBOT_BRINGUP::RELJOINTMOVJREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RELJOINTMOVJRESPONSE")
  (make-package "DOBOT_BRINGUP::RELJOINTMOVJRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RelJointMovJRequest
  :super ros::object
  :slots (_offset1 _offset2 _offset3 _offset4 _offset5 _offset6 _paramValue ))

(defmethod dobot_bringup::RelJointMovJRequest
  (:init
   (&key
    ((:offset1 __offset1) 0.0)
    ((:offset2 __offset2) 0.0)
    ((:offset3 __offset3) 0.0)
    ((:offset4 __offset4) 0.0)
    ((:offset5 __offset5) 0.0)
    ((:offset6 __offset6) 0.0)
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _offset1 (float __offset1))
   (setq _offset2 (float __offset2))
   (setq _offset3 (float __offset3))
   (setq _offset4 (float __offset4))
   (setq _offset5 (float __offset5))
   (setq _offset6 (float __offset6))
   (setq _paramValue __paramValue)
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
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
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
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
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
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
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

(defclass dobot_bringup::RelJointMovJResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::RelJointMovJResponse
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

(defclass dobot_bringup::RelJointMovJ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RelJointMovJ :md5sum-) "03967d766f807d795f6e85af35f413a1")
(setf (get dobot_bringup::RelJointMovJ :datatype-) "dobot_bringup/RelJointMovJ")
(setf (get dobot_bringup::RelJointMovJ :request) dobot_bringup::RelJointMovJRequest)
(setf (get dobot_bringup::RelJointMovJ :response) dobot_bringup::RelJointMovJResponse)

(defmethod dobot_bringup::RelJointMovJRequest
  (:response () (instance dobot_bringup::RelJointMovJResponse :init)))

(setf (get dobot_bringup::RelJointMovJRequest :md5sum-) "03967d766f807d795f6e85af35f413a1")
(setf (get dobot_bringup::RelJointMovJRequest :datatype-) "dobot_bringup/RelJointMovJRequest")
(setf (get dobot_bringup::RelJointMovJRequest :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
string[] paramValue
---

int32 res
")

(setf (get dobot_bringup::RelJointMovJResponse :md5sum-) "03967d766f807d795f6e85af35f413a1")
(setf (get dobot_bringup::RelJointMovJResponse :datatype-) "dobot_bringup/RelJointMovJResponse")
(setf (get dobot_bringup::RelJointMovJResponse :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
string[] paramValue
---

int32 res
")



(provide :dobot_bringup/RelJointMovJ "03967d766f807d795f6e85af35f413a1")


