;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetCollideDrag)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetCollideDrag (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETCOLLIDEDRAG")
  (make-package "DOBOT_BRINGUP::SETCOLLIDEDRAG"))
(unless (find-package "DOBOT_BRINGUP::SETCOLLIDEDRAGREQUEST")
  (make-package "DOBOT_BRINGUP::SETCOLLIDEDRAGREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETCOLLIDEDRAGRESPONSE")
  (make-package "DOBOT_BRINGUP::SETCOLLIDEDRAGRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetCollideDragRequest
  :super ros::object
  :slots (_status ))

(defmethod dobot_bringup::SetCollideDragRequest
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetCollideDragResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetCollideDragResponse
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

(defclass dobot_bringup::SetCollideDrag
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetCollideDrag :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetCollideDrag :datatype-) "dobot_bringup/SetCollideDrag")
(setf (get dobot_bringup::SetCollideDrag :request) dobot_bringup::SetCollideDragRequest)
(setf (get dobot_bringup::SetCollideDrag :response) dobot_bringup::SetCollideDragResponse)

(defmethod dobot_bringup::SetCollideDragRequest
  (:response () (instance dobot_bringup::SetCollideDragResponse :init)))

(setf (get dobot_bringup::SetCollideDragRequest :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetCollideDragRequest :datatype-) "dobot_bringup/SetCollideDragRequest")
(setf (get dobot_bringup::SetCollideDragRequest :definition-)
      "int32 status
---
int32 res
")

(setf (get dobot_bringup::SetCollideDragResponse :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetCollideDragResponse :datatype-) "dobot_bringup/SetCollideDragResponse")
(setf (get dobot_bringup::SetCollideDragResponse :definition-)
      "int32 status
---
int32 res
")



(provide :dobot_bringup/SetCollideDrag "e9885118d8baa0e46bd047b6deaa3f81")


