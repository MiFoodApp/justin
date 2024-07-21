;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::MovJExt)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'MovJExt (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::MOVJEXT")
  (make-package "DOBOT_BRINGUP::MOVJEXT"))
(unless (find-package "DOBOT_BRINGUP::MOVJEXTREQUEST")
  (make-package "DOBOT_BRINGUP::MOVJEXTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::MOVJEXTRESPONSE")
  (make-package "DOBOT_BRINGUP::MOVJEXTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::MovJExtRequest
  :super ros::object
  :slots (_offset _paramValue ))

(defmethod dobot_bringup::MovJExtRequest
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _paramValue __paramValue)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
  (:serialization-length
   ()
   (+
    ;; float64 _offset
    8
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _offset
     (setq _offset (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(defclass dobot_bringup::MovJExtResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::MovJExtResponse
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

(defclass dobot_bringup::MovJExt
  :super ros::object
  :slots ())

(setf (get dobot_bringup::MovJExt :md5sum-) "9c5f1f0d2ab66db2c121e88f04537959")
(setf (get dobot_bringup::MovJExt :datatype-) "dobot_bringup/MovJExt")
(setf (get dobot_bringup::MovJExt :request) dobot_bringup::MovJExtRequest)
(setf (get dobot_bringup::MovJExt :response) dobot_bringup::MovJExtResponse)

(defmethod dobot_bringup::MovJExtRequest
  (:response () (instance dobot_bringup::MovJExtResponse :init)))

(setf (get dobot_bringup::MovJExtRequest :md5sum-) "9c5f1f0d2ab66db2c121e88f04537959")
(setf (get dobot_bringup::MovJExtRequest :datatype-) "dobot_bringup/MovJExtRequest")
(setf (get dobot_bringup::MovJExtRequest :definition-)
      "float64 offset
string[] paramValue
---

int32 res
")

(setf (get dobot_bringup::MovJExtResponse :md5sum-) "9c5f1f0d2ab66db2c121e88f04537959")
(setf (get dobot_bringup::MovJExtResponse :datatype-) "dobot_bringup/MovJExtResponse")
(setf (get dobot_bringup::MovJExtResponse :definition-)
      "float64 offset
string[] paramValue
---

int32 res
")



(provide :dobot_bringup/MovJExt "9c5f1f0d2ab66db2c121e88f04537959")


