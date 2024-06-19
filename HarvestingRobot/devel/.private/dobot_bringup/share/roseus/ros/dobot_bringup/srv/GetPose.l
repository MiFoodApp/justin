;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetPose)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetPose (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETPOSE")
  (make-package "DOBOT_BRINGUP::GETPOSE"))
(unless (find-package "DOBOT_BRINGUP::GETPOSEREQUEST")
  (make-package "DOBOT_BRINGUP::GETPOSEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETPOSERESPONSE")
  (make-package "DOBOT_BRINGUP::GETPOSERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetPoseRequest
  :super ros::object
  :slots (_user _tool ))

(defmethod dobot_bringup::GetPoseRequest
  (:init
   (&key
    ((:user __user) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tool __tool) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _user __user)
   (setq _tool __tool)
   self)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:tool
   (&optional __tool)
   (if __tool (setq _tool __tool)) _tool)
  (:serialization-length
   ()
   (+
    ;; int32[] _user
    (* 4    (length _user)) 4
    ;; int32[] _tool
    (* 4    (length _tool)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _user
     (write-long (length _user) s)
     (dotimes (i (length _user))
       (write-long (elt _user i) s)
       )
     ;; int32[] _tool
     (write-long (length _tool) s)
     (dotimes (i (length _tool))
       (write-long (elt _tool i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _user
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _user (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _user i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _tool
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tool i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::GetPoseResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetPoseResponse
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

(defclass dobot_bringup::GetPose
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetPose :md5sum-) "87556986c72d917767149c33e08b7265")
(setf (get dobot_bringup::GetPose :datatype-) "dobot_bringup/GetPose")
(setf (get dobot_bringup::GetPose :request) dobot_bringup::GetPoseRequest)
(setf (get dobot_bringup::GetPose :response) dobot_bringup::GetPoseResponse)

(defmethod dobot_bringup::GetPoseRequest
  (:response () (instance dobot_bringup::GetPoseResponse :init)))

(setf (get dobot_bringup::GetPoseRequest :md5sum-) "87556986c72d917767149c33e08b7265")
(setf (get dobot_bringup::GetPoseRequest :datatype-) "dobot_bringup/GetPoseRequest")
(setf (get dobot_bringup::GetPoseRequest :definition-)
      "int32[] user
int32[] tool
---
int32 res
")

(setf (get dobot_bringup::GetPoseResponse :md5sum-) "87556986c72d917767149c33e08b7265")
(setf (get dobot_bringup::GetPoseResponse :datatype-) "dobot_bringup/GetPoseResponse")
(setf (get dobot_bringup::GetPoseResponse :definition-)
      "int32[] user
int32[] tool
---
int32 res
")



(provide :dobot_bringup/GetPose "87556986c72d917767149c33e08b7265")


