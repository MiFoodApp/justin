;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::EnableRobot)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'EnableRobot (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::ENABLEROBOT")
  (make-package "DOBOT_BRINGUP::ENABLEROBOT"))
(unless (find-package "DOBOT_BRINGUP::ENABLEROBOTREQUEST")
  (make-package "DOBOT_BRINGUP::ENABLEROBOTREQUEST"))
(unless (find-package "DOBOT_BRINGUP::ENABLEROBOTRESPONSE")
  (make-package "DOBOT_BRINGUP::ENABLEROBOTRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::EnableRobotRequest
  :super ros::object
  :slots (_args ))

(defmethod dobot_bringup::EnableRobotRequest
  (:init
   (&key
    ((:args __args) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _args __args)
   self)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; float64[] _args
    (* 8    (length _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _args
     (write-long (length _args) s)
     (dotimes (i (length _args))
       (sys::poke (elt _args i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _args i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::EnableRobotResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::EnableRobotResponse
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

(defclass dobot_bringup::EnableRobot
  :super ros::object
  :slots ())

(setf (get dobot_bringup::EnableRobot :md5sum-) "c8c32a9a172a18b46989544c88798d15")
(setf (get dobot_bringup::EnableRobot :datatype-) "dobot_bringup/EnableRobot")
(setf (get dobot_bringup::EnableRobot :request) dobot_bringup::EnableRobotRequest)
(setf (get dobot_bringup::EnableRobot :response) dobot_bringup::EnableRobotResponse)

(defmethod dobot_bringup::EnableRobotRequest
  (:response () (instance dobot_bringup::EnableRobotResponse :init)))

(setf (get dobot_bringup::EnableRobotRequest :md5sum-) "c8c32a9a172a18b46989544c88798d15")
(setf (get dobot_bringup::EnableRobotRequest :datatype-) "dobot_bringup/EnableRobotRequest")
(setf (get dobot_bringup::EnableRobotRequest :definition-)
      "float64[] args
---
int32 res
")

(setf (get dobot_bringup::EnableRobotResponse :md5sum-) "c8c32a9a172a18b46989544c88798d15")
(setf (get dobot_bringup::EnableRobotResponse :datatype-) "dobot_bringup/EnableRobotResponse")
(setf (get dobot_bringup::EnableRobotResponse :definition-)
      "float64[] args
---
int32 res
")



(provide :dobot_bringup/EnableRobot "c8c32a9a172a18b46989544c88798d15")


