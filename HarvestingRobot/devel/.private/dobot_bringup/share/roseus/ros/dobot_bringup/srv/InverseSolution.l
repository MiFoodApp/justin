;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::InverseSolution)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'InverseSolution (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::INVERSESOLUTION")
  (make-package "DOBOT_BRINGUP::INVERSESOLUTION"))
(unless (find-package "DOBOT_BRINGUP::INVERSESOLUTIONREQUEST")
  (make-package "DOBOT_BRINGUP::INVERSESOLUTIONREQUEST"))
(unless (find-package "DOBOT_BRINGUP::INVERSESOLUTIONRESPONSE")
  (make-package "DOBOT_BRINGUP::INVERSESOLUTIONRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::InverseSolutionRequest
  :super ros::object
  :slots (_offset1 _offset2 _offset3 _offset4 _offset5 _offset6 _user _tool _isJointNear _JointNear ))

(defmethod dobot_bringup::InverseSolutionRequest
  (:init
   (&key
    ((:offset1 __offset1) 0.0)
    ((:offset2 __offset2) 0.0)
    ((:offset3 __offset3) 0.0)
    ((:offset4 __offset4) 0.0)
    ((:offset5 __offset5) 0.0)
    ((:offset6 __offset6) 0.0)
    ((:user __user) 0)
    ((:tool __tool) 0)
    ((:isJointNear __isJointNear) 0)
    ((:JointNear __JointNear) "")
    )
   (send-super :init)
   (setq _offset1 (float __offset1))
   (setq _offset2 (float __offset2))
   (setq _offset3 (float __offset3))
   (setq _offset4 (float __offset4))
   (setq _offset5 (float __offset5))
   (setq _offset6 (float __offset6))
   (setq _user (round __user))
   (setq _tool (round __tool))
   (setq _isJointNear (round __isJointNear))
   (setq _JointNear (string __JointNear))
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
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:tool
   (&optional __tool)
   (if __tool (setq _tool __tool)) _tool)
  (:isJointNear
   (&optional __isJointNear)
   (if __isJointNear (setq _isJointNear __isJointNear)) _isJointNear)
  (:JointNear
   (&optional __JointNear)
   (if __JointNear (setq _JointNear __JointNear)) _JointNear)
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
    ;; int32 _user
    4
    ;; int32 _tool
    4
    ;; int32 _isJointNear
    4
    ;; string _JointNear
    4 (length _JointNear)
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
     ;; int32 _user
       (write-long _user s)
     ;; int32 _tool
       (write-long _tool s)
     ;; int32 _isJointNear
       (write-long _isJointNear s)
     ;; string _JointNear
       (write-long (length _JointNear) s) (princ _JointNear s)
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
   ;; int32 _user
     (setq _user (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tool
     (setq _tool (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _isJointNear
     (setq _isJointNear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _JointNear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _JointNear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::InverseSolutionResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::InverseSolutionResponse
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

(defclass dobot_bringup::InverseSolution
  :super ros::object
  :slots ())

(setf (get dobot_bringup::InverseSolution :md5sum-) "ca1d2fdd189adb0efab2e962b8538e82")
(setf (get dobot_bringup::InverseSolution :datatype-) "dobot_bringup/InverseSolution")
(setf (get dobot_bringup::InverseSolution :request) dobot_bringup::InverseSolutionRequest)
(setf (get dobot_bringup::InverseSolution :response) dobot_bringup::InverseSolutionResponse)

(defmethod dobot_bringup::InverseSolutionRequest
  (:response () (instance dobot_bringup::InverseSolutionResponse :init)))

(setf (get dobot_bringup::InverseSolutionRequest :md5sum-) "ca1d2fdd189adb0efab2e962b8538e82")
(setf (get dobot_bringup::InverseSolutionRequest :datatype-) "dobot_bringup/InverseSolutionRequest")
(setf (get dobot_bringup::InverseSolutionRequest :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
int32 user
int32 tool
int32 isJointNear
string JointNear
---
int32 res
")

(setf (get dobot_bringup::InverseSolutionResponse :md5sum-) "ca1d2fdd189adb0efab2e962b8538e82")
(setf (get dobot_bringup::InverseSolutionResponse :datatype-) "dobot_bringup/InverseSolutionResponse")
(setf (get dobot_bringup::InverseSolutionResponse :definition-)
      "float64 offset1
float64 offset2
float64 offset3
float64 offset4
float64 offset5
float64 offset6
int32 user
int32 tool
int32 isJointNear
string JointNear
---
int32 res
")



(provide :dobot_bringup/InverseSolution "ca1d2fdd189adb0efab2e962b8538e82")


