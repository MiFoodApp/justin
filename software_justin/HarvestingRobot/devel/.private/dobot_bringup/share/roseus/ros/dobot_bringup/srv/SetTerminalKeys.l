;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetTerminalKeys)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetTerminalKeys (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETTERMINALKEYS")
  (make-package "DOBOT_BRINGUP::SETTERMINALKEYS"))
(unless (find-package "DOBOT_BRINGUP::SETTERMINALKEYSREQUEST")
  (make-package "DOBOT_BRINGUP::SETTERMINALKEYSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETTERMINALKEYSRESPONSE")
  (make-package "DOBOT_BRINGUP::SETTERMINALKEYSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetTerminalKeysRequest
  :super ros::object
  :slots (_status ))

(defmethod dobot_bringup::SetTerminalKeysRequest
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

(defclass dobot_bringup::SetTerminalKeysResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetTerminalKeysResponse
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

(defclass dobot_bringup::SetTerminalKeys
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetTerminalKeys :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetTerminalKeys :datatype-) "dobot_bringup/SetTerminalKeys")
(setf (get dobot_bringup::SetTerminalKeys :request) dobot_bringup::SetTerminalKeysRequest)
(setf (get dobot_bringup::SetTerminalKeys :response) dobot_bringup::SetTerminalKeysResponse)

(defmethod dobot_bringup::SetTerminalKeysRequest
  (:response () (instance dobot_bringup::SetTerminalKeysResponse :init)))

(setf (get dobot_bringup::SetTerminalKeysRequest :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetTerminalKeysRequest :datatype-) "dobot_bringup/SetTerminalKeysRequest")
(setf (get dobot_bringup::SetTerminalKeysRequest :definition-)
      "int32 status
---
int32 res
")

(setf (get dobot_bringup::SetTerminalKeysResponse :md5sum-) "e9885118d8baa0e46bd047b6deaa3f81")
(setf (get dobot_bringup::SetTerminalKeysResponse :datatype-) "dobot_bringup/SetTerminalKeysResponse")
(setf (get dobot_bringup::SetTerminalKeysResponse :definition-)
      "int32 status
---
int32 res
")



(provide :dobot_bringup/SetTerminalKeys "e9885118d8baa0e46bd047b6deaa3f81")


