;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::StartPath)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'StartPath (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::STARTPATH")
  (make-package "DOBOT_BRINGUP::STARTPATH"))
(unless (find-package "DOBOT_BRINGUP::STARTPATHREQUEST")
  (make-package "DOBOT_BRINGUP::STARTPATHREQUEST"))
(unless (find-package "DOBOT_BRINGUP::STARTPATHRESPONSE")
  (make-package "DOBOT_BRINGUP::STARTPATHRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::StartPathRequest
  :super ros::object
  :slots (_trace_name _const_val _cart ))

(defmethod dobot_bringup::StartPathRequest
  (:init
   (&key
    ((:trace_name __trace_name) "")
    ((:const_val __const_val) 0)
    ((:cart __cart) 0)
    )
   (send-super :init)
   (setq _trace_name (string __trace_name))
   (setq _const_val (round __const_val))
   (setq _cart (round __cart))
   self)
  (:trace_name
   (&optional __trace_name)
   (if __trace_name (setq _trace_name __trace_name)) _trace_name)
  (:const_val
   (&optional __const_val)
   (if __const_val (setq _const_val __const_val)) _const_val)
  (:cart
   (&optional __cart)
   (if __cart (setq _cart __cart)) _cart)
  (:serialization-length
   ()
   (+
    ;; string _trace_name
    4 (length _trace_name)
    ;; int32 _const_val
    4
    ;; int32 _cart
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _trace_name
       (write-long (length _trace_name) s) (princ _trace_name s)
     ;; int32 _const_val
       (write-long _const_val s)
     ;; int32 _cart
       (write-long _cart s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _trace_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trace_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _const_val
     (setq _const_val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cart
     (setq _cart (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::StartPathResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::StartPathResponse
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

(defclass dobot_bringup::StartPath
  :super ros::object
  :slots ())

(setf (get dobot_bringup::StartPath :md5sum-) "012e04e913faf311dafe5a22000e023c")
(setf (get dobot_bringup::StartPath :datatype-) "dobot_bringup/StartPath")
(setf (get dobot_bringup::StartPath :request) dobot_bringup::StartPathRequest)
(setf (get dobot_bringup::StartPath :response) dobot_bringup::StartPathResponse)

(defmethod dobot_bringup::StartPathRequest
  (:response () (instance dobot_bringup::StartPathResponse :init)))

(setf (get dobot_bringup::StartPathRequest :md5sum-) "012e04e913faf311dafe5a22000e023c")
(setf (get dobot_bringup::StartPathRequest :datatype-) "dobot_bringup/StartPathRequest")
(setf (get dobot_bringup::StartPathRequest :definition-)
      "string trace_name
int32 const_val
int32 cart
---
int32 res
")

(setf (get dobot_bringup::StartPathResponse :md5sum-) "012e04e913faf311dafe5a22000e023c")
(setf (get dobot_bringup::StartPathResponse :datatype-) "dobot_bringup/StartPathResponse")
(setf (get dobot_bringup::StartPathResponse :definition-)
      "string trace_name
int32 const_val
int32 cart
---
int32 res
")



(provide :dobot_bringup/StartPath "012e04e913faf311dafe5a22000e023c")


