;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetErrorID)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetErrorID (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETERRORID")
  (make-package "DOBOT_BRINGUP::GETERRORID"))
(unless (find-package "DOBOT_BRINGUP::GETERRORIDREQUEST")
  (make-package "DOBOT_BRINGUP::GETERRORIDREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETERRORIDRESPONSE")
  (make-package "DOBOT_BRINGUP::GETERRORIDRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetErrorIDRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::GetErrorIDRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot_bringup::GetErrorIDResponse
  :super ros::object
  :slots (_res _errorID ))

(defmethod dobot_bringup::GetErrorIDResponse
  (:init
   (&key
    ((:res __res) 0)
    ((:errorID __errorID) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _res (round __res))
   (setq _errorID __errorID)
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:errorID
   (&optional __errorID)
   (if __errorID (setq _errorID __errorID)) _errorID)
  (:serialization-length
   ()
   (+
    ;; int32 _res
    4
    ;; int32[] _errorID
    (* 4    (length _errorID)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _res
       (write-long _res s)
     ;; int32[] _errorID
     (write-long (length _errorID) s)
     (dotimes (i (length _errorID))
       (write-long (elt _errorID i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _res
     (setq _res (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _errorID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errorID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _errorID i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::GetErrorID
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetErrorID :md5sum-) "21732a31ce08e00841e34036c6b93272")
(setf (get dobot_bringup::GetErrorID :datatype-) "dobot_bringup/GetErrorID")
(setf (get dobot_bringup::GetErrorID :request) dobot_bringup::GetErrorIDRequest)
(setf (get dobot_bringup::GetErrorID :response) dobot_bringup::GetErrorIDResponse)

(defmethod dobot_bringup::GetErrorIDRequest
  (:response () (instance dobot_bringup::GetErrorIDResponse :init)))

(setf (get dobot_bringup::GetErrorIDRequest :md5sum-) "21732a31ce08e00841e34036c6b93272")
(setf (get dobot_bringup::GetErrorIDRequest :datatype-) "dobot_bringup/GetErrorIDRequest")
(setf (get dobot_bringup::GetErrorIDRequest :definition-)
      "---
int32 res
int32[] errorID
")

(setf (get dobot_bringup::GetErrorIDResponse :md5sum-) "21732a31ce08e00841e34036c6b93272")
(setf (get dobot_bringup::GetErrorIDResponse :datatype-) "dobot_bringup/GetErrorIDResponse")
(setf (get dobot_bringup::GetErrorIDResponse :definition-)
      "---
int32 res
int32[] errorID
")



(provide :dobot_bringup/GetErrorID "21732a31ce08e00841e34036c6b93272")


