;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::AOExecute)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'AOExecute (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::AOEXECUTE")
  (make-package "DOBOT_BRINGUP::AOEXECUTE"))
(unless (find-package "DOBOT_BRINGUP::AOEXECUTEREQUEST")
  (make-package "DOBOT_BRINGUP::AOEXECUTEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::AOEXECUTERESPONSE")
  (make-package "DOBOT_BRINGUP::AOEXECUTERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::AOExecuteRequest
  :super ros::object
  :slots (_index _value ))

(defmethod dobot_bringup::AOExecuteRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _value (round __value))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::AOExecuteResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::AOExecuteResponse
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

(defclass dobot_bringup::AOExecute
  :super ros::object
  :slots ())

(setf (get dobot_bringup::AOExecute :md5sum-) "c9ffa71f693aabb4ec23d98e0cce7e29")
(setf (get dobot_bringup::AOExecute :datatype-) "dobot_bringup/AOExecute")
(setf (get dobot_bringup::AOExecute :request) dobot_bringup::AOExecuteRequest)
(setf (get dobot_bringup::AOExecute :response) dobot_bringup::AOExecuteResponse)

(defmethod dobot_bringup::AOExecuteRequest
  (:response () (instance dobot_bringup::AOExecuteResponse :init)))

(setf (get dobot_bringup::AOExecuteRequest :md5sum-) "c9ffa71f693aabb4ec23d98e0cce7e29")
(setf (get dobot_bringup::AOExecuteRequest :datatype-) "dobot_bringup/AOExecuteRequest")
(setf (get dobot_bringup::AOExecuteRequest :definition-)
      "# index --> 1 - 2
# value --> 0 - 10
int32 index
int32 value
---
int32 res
")

(setf (get dobot_bringup::AOExecuteResponse :md5sum-) "c9ffa71f693aabb4ec23d98e0cce7e29")
(setf (get dobot_bringup::AOExecuteResponse :datatype-) "dobot_bringup/AOExecuteResponse")
(setf (get dobot_bringup::AOExecuteResponse :definition-)
      "# index --> 1 - 2
# value --> 0 - 10
int32 index
int32 value
---
int32 res
")



(provide :dobot_bringup/AOExecute "c9ffa71f693aabb4ec23d98e0cce7e29")


