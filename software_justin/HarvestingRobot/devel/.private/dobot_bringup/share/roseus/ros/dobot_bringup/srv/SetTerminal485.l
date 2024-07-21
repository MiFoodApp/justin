;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetTerminal485)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetTerminal485 (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETTERMINAL485")
  (make-package "DOBOT_BRINGUP::SETTERMINAL485"))
(unless (find-package "DOBOT_BRINGUP::SETTERMINAL485REQUEST")
  (make-package "DOBOT_BRINGUP::SETTERMINAL485REQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETTERMINAL485RESPONSE")
  (make-package "DOBOT_BRINGUP::SETTERMINAL485RESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetTerminal485Request
  :super ros::object
  :slots (_baudRate _dataLen _parityBit _stopBit ))

(defmethod dobot_bringup::SetTerminal485Request
  (:init
   (&key
    ((:baudRate __baudRate) 0)
    ((:dataLen __dataLen) 0)
    ((:parityBit __parityBit) "")
    ((:stopBit __stopBit) 0)
    )
   (send-super :init)
   (setq _baudRate (round __baudRate))
   (setq _dataLen (round __dataLen))
   (setq _parityBit (string __parityBit))
   (setq _stopBit (round __stopBit))
   self)
  (:baudRate
   (&optional __baudRate)
   (if __baudRate (setq _baudRate __baudRate)) _baudRate)
  (:dataLen
   (&optional __dataLen)
   (if __dataLen (setq _dataLen __dataLen)) _dataLen)
  (:parityBit
   (&optional __parityBit)
   (if __parityBit (setq _parityBit __parityBit)) _parityBit)
  (:stopBit
   (&optional __stopBit)
   (if __stopBit (setq _stopBit __stopBit)) _stopBit)
  (:serialization-length
   ()
   (+
    ;; int32 _baudRate
    4
    ;; int32 _dataLen
    4
    ;; string _parityBit
    4 (length _parityBit)
    ;; int32 _stopBit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _baudRate
       (write-long _baudRate s)
     ;; int32 _dataLen
       (write-long _dataLen s)
     ;; string _parityBit
       (write-long (length _parityBit) s) (princ _parityBit s)
     ;; int32 _stopBit
       (write-long _stopBit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _baudRate
     (setq _baudRate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dataLen
     (setq _dataLen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _parityBit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parityBit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _stopBit
     (setq _stopBit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::SetTerminal485Response
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetTerminal485Response
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

(defclass dobot_bringup::SetTerminal485
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetTerminal485 :md5sum-) "69a7692f366328cd10e3101ae3b97e60")
(setf (get dobot_bringup::SetTerminal485 :datatype-) "dobot_bringup/SetTerminal485")
(setf (get dobot_bringup::SetTerminal485 :request) dobot_bringup::SetTerminal485Request)
(setf (get dobot_bringup::SetTerminal485 :response) dobot_bringup::SetTerminal485Response)

(defmethod dobot_bringup::SetTerminal485Request
  (:response () (instance dobot_bringup::SetTerminal485Response :init)))

(setf (get dobot_bringup::SetTerminal485Request :md5sum-) "69a7692f366328cd10e3101ae3b97e60")
(setf (get dobot_bringup::SetTerminal485Request :datatype-) "dobot_bringup/SetTerminal485Request")
(setf (get dobot_bringup::SetTerminal485Request :definition-)
      "int32 baudRate
int32 dataLen
string parityBit
int32 stopBit
---
int32 res
")

(setf (get dobot_bringup::SetTerminal485Response :md5sum-) "69a7692f366328cd10e3101ae3b97e60")
(setf (get dobot_bringup::SetTerminal485Response :datatype-) "dobot_bringup/SetTerminal485Response")
(setf (get dobot_bringup::SetTerminal485Response :definition-)
      "int32 baudRate
int32 dataLen
string parityBit
int32 stopBit
---
int32 res
")



(provide :dobot_bringup/SetTerminal485 "69a7692f366328cd10e3101ae3b97e60")


