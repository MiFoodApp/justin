;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::AI)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'AI (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::AI")
  (make-package "DOBOT_BRINGUP::AI"))
(unless (find-package "DOBOT_BRINGUP::AIREQUEST")
  (make-package "DOBOT_BRINGUP::AIREQUEST"))
(unless (find-package "DOBOT_BRINGUP::AIRESPONSE")
  (make-package "DOBOT_BRINGUP::AIRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::AIRequest
  :super ros::object
  :slots (_index ))

(defmethod dobot_bringup::AIRequest
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::AIResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::AIResponse
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

(defclass dobot_bringup::AI
  :super ros::object
  :slots ())

(setf (get dobot_bringup::AI :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::AI :datatype-) "dobot_bringup/AI")
(setf (get dobot_bringup::AI :request) dobot_bringup::AIRequest)
(setf (get dobot_bringup::AI :response) dobot_bringup::AIResponse)

(defmethod dobot_bringup::AIRequest
  (:response () (instance dobot_bringup::AIResponse :init)))

(setf (get dobot_bringup::AIRequest :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::AIRequest :datatype-) "dobot_bringup/AIRequest")
(setf (get dobot_bringup::AIRequest :definition-)
      "int32 index
---
int32 res
")

(setf (get dobot_bringup::AIResponse :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::AIResponse :datatype-) "dobot_bringup/AIResponse")
(setf (get dobot_bringup::AIResponse :definition-)
      "int32 index
---
int32 res
")



(provide :dobot_bringup/AI "6d753c0adbdd6c06a6eb5c36aec96b0c")


