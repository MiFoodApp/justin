;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Tool)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Tool (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TOOL")
  (make-package "DOBOT_BRINGUP::TOOL"))
(unless (find-package "DOBOT_BRINGUP::TOOLREQUEST")
  (make-package "DOBOT_BRINGUP::TOOLREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TOOLRESPONSE")
  (make-package "DOBOT_BRINGUP::TOOLRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ToolRequest
  :super ros::object
  :slots (_index ))

(defmethod dobot_bringup::ToolRequest
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

(defclass dobot_bringup::ToolResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ToolResponse
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

(defclass dobot_bringup::Tool
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Tool :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::Tool :datatype-) "dobot_bringup/Tool")
(setf (get dobot_bringup::Tool :request) dobot_bringup::ToolRequest)
(setf (get dobot_bringup::Tool :response) dobot_bringup::ToolResponse)

(defmethod dobot_bringup::ToolRequest
  (:response () (instance dobot_bringup::ToolResponse :init)))

(setf (get dobot_bringup::ToolRequest :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::ToolRequest :datatype-) "dobot_bringup/ToolRequest")
(setf (get dobot_bringup::ToolRequest :definition-)
      "int32 index
---
int32 res
")

(setf (get dobot_bringup::ToolResponse :md5sum-) "6d753c0adbdd6c06a6eb5c36aec96b0c")
(setf (get dobot_bringup::ToolResponse :datatype-) "dobot_bringup/ToolResponse")
(setf (get dobot_bringup::ToolResponse :definition-)
      "int32 index
---
int32 res
")



(provide :dobot_bringup/Tool "6d753c0adbdd6c06a6eb5c36aec96b0c")


