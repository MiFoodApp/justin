;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetCoils)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetCoils (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETCOILS")
  (make-package "DOBOT_BRINGUP::GETCOILS"))
(unless (find-package "DOBOT_BRINGUP::GETCOILSREQUEST")
  (make-package "DOBOT_BRINGUP::GETCOILSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETCOILSRESPONSE")
  (make-package "DOBOT_BRINGUP::GETCOILSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetCoilsRequest
  :super ros::object
  :slots (_index _addr _count ))

(defmethod dobot_bringup::GetCoilsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:addr __addr) 0)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _addr (round __addr))
   (setq _count (round __count))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:addr
   (&optional __addr)
   (if __addr (setq _addr __addr)) _addr)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _addr
    4
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _addr
       (write-long _addr s)
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _addr
     (setq _addr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::GetCoilsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetCoilsResponse
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

(defclass dobot_bringup::GetCoils
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetCoils :md5sum-) "de1dce40f2412fd2090ac6da0640d083")
(setf (get dobot_bringup::GetCoils :datatype-) "dobot_bringup/GetCoils")
(setf (get dobot_bringup::GetCoils :request) dobot_bringup::GetCoilsRequest)
(setf (get dobot_bringup::GetCoils :response) dobot_bringup::GetCoilsResponse)

(defmethod dobot_bringup::GetCoilsRequest
  (:response () (instance dobot_bringup::GetCoilsResponse :init)))

(setf (get dobot_bringup::GetCoilsRequest :md5sum-) "de1dce40f2412fd2090ac6da0640d083")
(setf (get dobot_bringup::GetCoilsRequest :datatype-) "dobot_bringup/GetCoilsRequest")
(setf (get dobot_bringup::GetCoilsRequest :definition-)
      "int32 index
int32 addr
int32 count
---
int32 res
")

(setf (get dobot_bringup::GetCoilsResponse :md5sum-) "de1dce40f2412fd2090ac6da0640d083")
(setf (get dobot_bringup::GetCoilsResponse :datatype-) "dobot_bringup/GetCoilsResponse")
(setf (get dobot_bringup::GetCoilsResponse :definition-)
      "int32 index
int32 addr
int32 count
---
int32 res
")



(provide :dobot_bringup/GetCoils "de1dce40f2412fd2090ac6da0640d083")


