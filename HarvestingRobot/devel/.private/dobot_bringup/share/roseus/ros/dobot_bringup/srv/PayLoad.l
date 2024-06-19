;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::PayLoad)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'PayLoad (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::PAYLOAD")
  (make-package "DOBOT_BRINGUP::PAYLOAD"))
(unless (find-package "DOBOT_BRINGUP::PAYLOADREQUEST")
  (make-package "DOBOT_BRINGUP::PAYLOADREQUEST"))
(unless (find-package "DOBOT_BRINGUP::PAYLOADRESPONSE")
  (make-package "DOBOT_BRINGUP::PAYLOADRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::PayLoadRequest
  :super ros::object
  :slots (_weight _inertia ))

(defmethod dobot_bringup::PayLoadRequest
  (:init
   (&key
    ((:weight __weight) 0.0)
    ((:inertia __inertia) 0.0)
    )
   (send-super :init)
   (setq _weight (float __weight))
   (setq _inertia (float __inertia))
   self)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:inertia
   (&optional __inertia)
   (if __inertia (setq _inertia __inertia)) _inertia)
  (:serialization-length
   ()
   (+
    ;; float64 _weight
    8
    ;; float64 _inertia
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inertia
       (sys::poke _inertia (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inertia
     (setq _inertia (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dobot_bringup::PayLoadResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::PayLoadResponse
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

(defclass dobot_bringup::PayLoad
  :super ros::object
  :slots ())

(setf (get dobot_bringup::PayLoad :md5sum-) "81150ead356b50be531e7bdd2240ca16")
(setf (get dobot_bringup::PayLoad :datatype-) "dobot_bringup/PayLoad")
(setf (get dobot_bringup::PayLoad :request) dobot_bringup::PayLoadRequest)
(setf (get dobot_bringup::PayLoad :response) dobot_bringup::PayLoadResponse)

(defmethod dobot_bringup::PayLoadRequest
  (:response () (instance dobot_bringup::PayLoadResponse :init)))

(setf (get dobot_bringup::PayLoadRequest :md5sum-) "81150ead356b50be531e7bdd2240ca16")
(setf (get dobot_bringup::PayLoadRequest :datatype-) "dobot_bringup/PayLoadRequest")
(setf (get dobot_bringup::PayLoadRequest :definition-)
      "
float64 weight
float64 inertia
---
int32 res
")

(setf (get dobot_bringup::PayLoadResponse :md5sum-) "81150ead356b50be531e7bdd2240ca16")
(setf (get dobot_bringup::PayLoadResponse :datatype-) "dobot_bringup/PayLoadResponse")
(setf (get dobot_bringup::PayLoadResponse :definition-)
      "
float64 weight
float64 inertia
---
int32 res
")



(provide :dobot_bringup/PayLoad "81150ead356b50be531e7bdd2240ca16")


