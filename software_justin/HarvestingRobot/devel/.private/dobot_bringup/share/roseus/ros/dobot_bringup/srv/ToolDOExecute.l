;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ToolDOExecute)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ToolDOExecute (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TOOLDOEXECUTE")
  (make-package "DOBOT_BRINGUP::TOOLDOEXECUTE"))
(unless (find-package "DOBOT_BRINGUP::TOOLDOEXECUTEREQUEST")
  (make-package "DOBOT_BRINGUP::TOOLDOEXECUTEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TOOLDOEXECUTERESPONSE")
  (make-package "DOBOT_BRINGUP::TOOLDOEXECUTERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ToolDOExecuteRequest
  :super ros::object
  :slots (_index _status ))

(defmethod dobot_bringup::ToolDOExecuteRequest
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

(defclass dobot_bringup::ToolDOExecuteResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ToolDOExecuteResponse
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

(defclass dobot_bringup::ToolDOExecute
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ToolDOExecute :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDOExecute :datatype-) "dobot_bringup/ToolDOExecute")
(setf (get dobot_bringup::ToolDOExecute :request) dobot_bringup::ToolDOExecuteRequest)
(setf (get dobot_bringup::ToolDOExecute :response) dobot_bringup::ToolDOExecuteResponse)

(defmethod dobot_bringup::ToolDOExecuteRequest
  (:response () (instance dobot_bringup::ToolDOExecuteResponse :init)))

(setf (get dobot_bringup::ToolDOExecuteRequest :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDOExecuteRequest :datatype-) "dobot_bringup/ToolDOExecuteRequest")
(setf (get dobot_bringup::ToolDOExecuteRequest :definition-)
      "int32 index
int32 status
---
int32 res
")

(setf (get dobot_bringup::ToolDOExecuteResponse :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::ToolDOExecuteResponse :datatype-) "dobot_bringup/ToolDOExecuteResponse")
(setf (get dobot_bringup::ToolDOExecuteResponse :definition-)
      "int32 index
int32 status
---
int32 res
")



(provide :dobot_bringup/ToolDOExecute "096263ad689c1ece47cec4376ad5d3b5")


