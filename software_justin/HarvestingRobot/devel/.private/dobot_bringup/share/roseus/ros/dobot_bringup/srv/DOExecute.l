;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::DOExecute)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'DOExecute (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::DOEXECUTE")
  (make-package "DOBOT_BRINGUP::DOEXECUTE"))
(unless (find-package "DOBOT_BRINGUP::DOEXECUTEREQUEST")
  (make-package "DOBOT_BRINGUP::DOEXECUTEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::DOEXECUTERESPONSE")
  (make-package "DOBOT_BRINGUP::DOEXECUTERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::DOExecuteRequest
  :super ros::object
  :slots (_index _status ))

(defmethod dobot_bringup::DOExecuteRequest
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

(defclass dobot_bringup::DOExecuteResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::DOExecuteResponse
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

(defclass dobot_bringup::DOExecute
  :super ros::object
  :slots ())

(setf (get dobot_bringup::DOExecute :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::DOExecute :datatype-) "dobot_bringup/DOExecute")
(setf (get dobot_bringup::DOExecute :request) dobot_bringup::DOExecuteRequest)
(setf (get dobot_bringup::DOExecute :response) dobot_bringup::DOExecuteResponse)

(defmethod dobot_bringup::DOExecuteRequest
  (:response () (instance dobot_bringup::DOExecuteResponse :init)))

(setf (get dobot_bringup::DOExecuteRequest :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::DOExecuteRequest :datatype-) "dobot_bringup/DOExecuteRequest")
(setf (get dobot_bringup::DOExecuteRequest :definition-)
      "# r --> 1 - 24
int32 index
int32 status
---
int32 res
")

(setf (get dobot_bringup::DOExecuteResponse :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::DOExecuteResponse :datatype-) "dobot_bringup/DOExecuteResponse")
(setf (get dobot_bringup::DOExecuteResponse :definition-)
      "# r --> 1 - 24
int32 index
int32 status
---
int32 res
")



(provide :dobot_bringup/DOExecute "096263ad689c1ece47cec4376ad5d3b5")


