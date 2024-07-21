;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetPayload)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetPayload (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETPAYLOAD")
  (make-package "DOBOT_BRINGUP::SETPAYLOAD"))
(unless (find-package "DOBOT_BRINGUP::SETPAYLOADREQUEST")
  (make-package "DOBOT_BRINGUP::SETPAYLOADREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETPAYLOADRESPONSE")
  (make-package "DOBOT_BRINGUP::SETPAYLOADRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetPayloadRequest
  :super ros::object
  :slots (_load ))

(defmethod dobot_bringup::SetPayloadRequest
  (:init
   (&key
    ((:load __load) 0.0)
    )
   (send-super :init)
   (setq _load (float __load))
   self)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:serialization-length
   ()
   (+
    ;; float64 _load
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _load
       (sys::poke _load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _load
     (setq _load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dobot_bringup::SetPayloadResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetPayloadResponse
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

(defclass dobot_bringup::SetPayload
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetPayload :md5sum-) "0ccc960c0675c1aad4912155bb3fde8a")
(setf (get dobot_bringup::SetPayload :datatype-) "dobot_bringup/SetPayload")
(setf (get dobot_bringup::SetPayload :request) dobot_bringup::SetPayloadRequest)
(setf (get dobot_bringup::SetPayload :response) dobot_bringup::SetPayloadResponse)

(defmethod dobot_bringup::SetPayloadRequest
  (:response () (instance dobot_bringup::SetPayloadResponse :init)))

(setf (get dobot_bringup::SetPayloadRequest :md5sum-) "0ccc960c0675c1aad4912155bb3fde8a")
(setf (get dobot_bringup::SetPayloadRequest :datatype-) "dobot_bringup/SetPayloadRequest")
(setf (get dobot_bringup::SetPayloadRequest :definition-)
      "float64 load
---
int32 res
")

(setf (get dobot_bringup::SetPayloadResponse :md5sum-) "0ccc960c0675c1aad4912155bb3fde8a")
(setf (get dobot_bringup::SetPayloadResponse :datatype-) "dobot_bringup/SetPayloadResponse")
(setf (get dobot_bringup::SetPayloadResponse :definition-)
      "float64 load
---
int32 res
")



(provide :dobot_bringup/SetPayload "0ccc960c0675c1aad4912155bb3fde8a")


