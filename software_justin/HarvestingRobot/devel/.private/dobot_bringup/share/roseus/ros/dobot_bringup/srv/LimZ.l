;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::LimZ)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'LimZ (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::LIMZ")
  (make-package "DOBOT_BRINGUP::LIMZ"))
(unless (find-package "DOBOT_BRINGUP::LIMZREQUEST")
  (make-package "DOBOT_BRINGUP::LIMZREQUEST"))
(unless (find-package "DOBOT_BRINGUP::LIMZRESPONSE")
  (make-package "DOBOT_BRINGUP::LIMZRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::LimZRequest
  :super ros::object
  :slots (_value ))

(defmethod dobot_bringup::LimZRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::LimZResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::LimZResponse
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

(defclass dobot_bringup::LimZ
  :super ros::object
  :slots ())

(setf (get dobot_bringup::LimZ :md5sum-) "e2f95961203d3c57387d7d792b34055f")
(setf (get dobot_bringup::LimZ :datatype-) "dobot_bringup/LimZ")
(setf (get dobot_bringup::LimZ :request) dobot_bringup::LimZRequest)
(setf (get dobot_bringup::LimZ :response) dobot_bringup::LimZResponse)

(defmethod dobot_bringup::LimZRequest
  (:response () (instance dobot_bringup::LimZResponse :init)))

(setf (get dobot_bringup::LimZRequest :md5sum-) "e2f95961203d3c57387d7d792b34055f")
(setf (get dobot_bringup::LimZRequest :datatype-) "dobot_bringup/LimZRequest")
(setf (get dobot_bringup::LimZRequest :definition-)
      "
int32 value
---
int32 res
")

(setf (get dobot_bringup::LimZResponse :md5sum-) "e2f95961203d3c57387d7d792b34055f")
(setf (get dobot_bringup::LimZResponse :datatype-) "dobot_bringup/LimZResponse")
(setf (get dobot_bringup::LimZResponse :definition-)
      "
int32 value
---
int32 res
")



(provide :dobot_bringup/LimZ "e2f95961203d3c57387d7d792b34055f")


