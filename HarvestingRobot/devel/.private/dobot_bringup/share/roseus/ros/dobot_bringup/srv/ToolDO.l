;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ToolDO)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ToolDO (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TOOLDO")
  (make-package "DOBOT_BRINGUP::TOOLDO"))
(unless (find-package "DOBOT_BRINGUP::TOOLDOREQUEST")
  (make-package "DOBOT_BRINGUP::TOOLDOREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TOOLDORESPONSE")
  (make-package "DOBOT_BRINGUP::TOOLDORESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ToolDORequest
  :super ros::object
  :slots (_index _status ))

(defmethod dobot_bringup::ToolDORequest
  (:init
   (&key
    ((:index __index) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _status (round __status))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::ToolDOResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ToolDOResponse
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

(defclass dobot_bringup::ToolDO
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ToolDO :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDO :datatype-) "dobot_bringup/ToolDO")
(setf (get dobot_bringup::ToolDO :request) dobot_bringup::ToolDORequest)
(setf (get dobot_bringup::ToolDO :response) dobot_bringup::ToolDOResponse)

(defmethod dobot_bringup::ToolDORequest
  (:response () (instance dobot_bringup::ToolDOResponse :init)))

(setf (get dobot_bringup::ToolDORequest :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDORequest :datatype-) "dobot_bringup/ToolDORequest")
(setf (get dobot_bringup::ToolDORequest :definition-)
      "int32 index
int32 status
---
int32 res
")

(setf (get dobot_bringup::ToolDOResponse :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDOResponse :datatype-) "dobot_bringup/ToolDOResponse")
(setf (get dobot_bringup::ToolDOResponse :definition-)
      "int32 index
int32 status
---
int32 res
")



(provide :dobot_bringup/ToolDO "096263ad689c1ece47cec4376ad5d3b5")


