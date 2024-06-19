;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::DigitalOutputs)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'DigitalOutputs (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::DIGITALOUTPUTS")
  (make-package "DOBOT_BRINGUP::DIGITALOUTPUTS"))
(unless (find-package "DOBOT_BRINGUP::DIGITALOUTPUTSREQUEST")
  (make-package "DOBOT_BRINGUP::DIGITALOUTPUTSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::DIGITALOUTPUTSRESPONSE")
  (make-package "DOBOT_BRINGUP::DIGITALOUTPUTSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::DigitalOutputsRequest
  :super ros::object
  :slots (_index _status ))

(defmethod dobot_bringup::DigitalOutputsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _status __status)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot_bringup::DigitalOutputsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::DigitalOutputsResponse
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

(defclass dobot_bringup::DigitalOutputs
  :super ros::object
  :slots ())

(setf (get dobot_bringup::DigitalOutputs :md5sum-) "66f73dbfd704b73f44395c00f1cff751")
(setf (get dobot_bringup::DigitalOutputs :datatype-) "dobot_bringup/DigitalOutputs")
(setf (get dobot_bringup::DigitalOutputs :request) dobot_bringup::DigitalOutputsRequest)
(setf (get dobot_bringup::DigitalOutputs :response) dobot_bringup::DigitalOutputsResponse)

(defmethod dobot_bringup::DigitalOutputsRequest
  (:response () (instance dobot_bringup::DigitalOutputsResponse :init)))

(setf (get dobot_bringup::DigitalOutputsRequest :md5sum-) "66f73dbfd704b73f44395c00f1cff751")
(setf (get dobot_bringup::DigitalOutputsRequest :datatype-) "dobot_bringup/DigitalOutputsRequest")
(setf (get dobot_bringup::DigitalOutputsRequest :definition-)
      "# index --> 0 - 9

int32 index
bool status
---
int32 res
")

(setf (get dobot_bringup::DigitalOutputsResponse :md5sum-) "66f73dbfd704b73f44395c00f1cff751")
(setf (get dobot_bringup::DigitalOutputsResponse :datatype-) "dobot_bringup/DigitalOutputsResponse")
(setf (get dobot_bringup::DigitalOutputsResponse :definition-)
      "# index --> 0 - 9

int32 index
bool status
---
int32 res
")



(provide :dobot_bringup/DigitalOutputs "66f73dbfd704b73f44395c00f1cff751")


