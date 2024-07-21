;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::AO)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'AO (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::AO")
  (make-package "DOBOT_BRINGUP::AO"))
(unless (find-package "DOBOT_BRINGUP::AOREQUEST")
  (make-package "DOBOT_BRINGUP::AOREQUEST"))
(unless (find-package "DOBOT_BRINGUP::AORESPONSE")
  (make-package "DOBOT_BRINGUP::AORESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::AORequest
  :super ros::object
  :slots (_index _status ))

(defmethod dobot_bringup::AORequest
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

(defclass dobot_bringup::AOResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::AOResponse
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

(defclass dobot_bringup::AO
  :super ros::object
  :slots ())

(setf (get dobot_bringup::AO :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::AO :datatype-) "dobot_bringup/AO")
(setf (get dobot_bringup::AO :request) dobot_bringup::AORequest)
(setf (get dobot_bringup::AO :response) dobot_bringup::AOResponse)

(defmethod dobot_bringup::AORequest
  (:response () (instance dobot_bringup::AOResponse :init)))

(setf (get dobot_bringup::AORequest :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::AORequest :datatype-) "dobot_bringup/AORequest")
(setf (get dobot_bringup::AORequest :definition-)
      "# index --> 1 - 2
# value --> 0 - 10
int32 index
int32 status
---
int32 res
")

(setf (get dobot_bringup::AOResponse :md5sum-) "096263ad689c1ece47cec4376ad5d3b5")
(setf (get dobot_bringup::AOResponse :datatype-) "dobot_bringup/AOResponse")
(setf (get dobot_bringup::AOResponse :definition-)
      "# index --> 1 - 2
# value --> 0 - 10
int32 index
int32 status
---
int32 res
")



(provide :dobot_bringup/AO "096263ad689c1ece47cec4376ad5d3b5")


