;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ToolDI)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ToolDI (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TOOLDI")
  (make-package "DOBOT_BRINGUP::TOOLDI"))
(unless (find-package "DOBOT_BRINGUP::TOOLDIREQUEST")
  (make-package "DOBOT_BRINGUP::TOOLDIREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TOOLDIRESPONSE")
  (make-package "DOBOT_BRINGUP::TOOLDIRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ToolDIRequest
  :super ros::object
  :slots (_index ))

(defmethod dobot_bringup::ToolDIRequest
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

(defclass dobot_bringup::ToolDIResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ToolDIResponse
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

(defclass dobot_bringup::ToolDI
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ToolDI :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::ToolDI :datatype-) "dobot_bringup/ToolDI")
(setf (get dobot_bringup::ToolDI :request) dobot_bringup::ToolDIRequest)
(setf (get dobot_bringup::ToolDI :response) dobot_bringup::ToolDIResponse)

(defmethod dobot_bringup::ToolDIRequest
  (:response () (instance dobot_bringup::ToolDIResponse :init)))

(setf (get dobot_bringup::ToolDIRequest :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::ToolDIRequest :datatype-) "dobot_bringup/ToolDIRequest")
(setf (get dobot_bringup::ToolDIRequest :definition-)
      "int32 index

---
int32 res
")

(setf (get dobot_bringup::ToolDIResponse :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::ToolDIResponse :datatype-) "dobot_bringup/ToolDIResponse")
(setf (get dobot_bringup::ToolDIResponse :definition-)
      "int32 index

---
int32 res
")



(provide :dobot_bringup/ToolDI "6d753c0adbdd6c06a6eb5c36aec96b0c")


