;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::AccL)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'AccL (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::ACCL")
  (make-package "DOBOT_BRINGUP::ACCL"))
(unless (find-package "DOBOT_BRINGUP::ACCLREQUEST")
  (make-package "DOBOT_BRINGUP::ACCLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::ACCLRESPONSE")
  (make-package "DOBOT_BRINGUP::ACCLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::AccLRequest
  :super ros::object
  :slots (_r ))

(defmethod dobot_bringup::AccLRequest
  (:init
   (&key
    ((:r __r) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; int32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _r
       (write-long _r s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::AccLResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::AccLResponse
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

(defclass dobot_bringup::AccL
  :super ros::object
  :slots ())

(setf (get dobot_bringup::AccL :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::AccL :datatype-) "dobot_bringup/AccL")
(setf (get dobot_bringup::AccL :request) dobot_bringup::AccLRequest)
(setf (get dobot_bringup::AccL :response) dobot_bringup::AccLResponse)

(defmethod dobot_bringup::AccLRequest
  (:response () (instance dobot_bringup::AccLResponse :init)))

(setf (get dobot_bringup::AccLRequest :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::AccLRequest :datatype-) "dobot_bringup/AccLRequest")
(setf (get dobot_bringup::AccLRequest :definition-)
      "# r --> 1 - 100
int32 r
---
int32 res
")

(setf (get dobot_bringup::AccLResponse :md5sum-) "941d9ecd0f5402311261de883bef5059")
(setf (get dobot_bringup::AccLResponse :datatype-) "dobot_bringup/AccLResponse")
(setf (get dobot_bringup::AccLResponse :definition-)
      "# r --> 1 - 100
int32 r
---
int32 res
")



(provide :dobot_bringup/AccL "941d9ecd0f5402311261de883bef5059")


