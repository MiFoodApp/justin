;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetCoils)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetCoils (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETCOILS")
  (make-package "DOBOT_BRINGUP::SETCOILS"))
(unless (find-package "DOBOT_BRINGUP::SETCOILSREQUEST")
  (make-package "DOBOT_BRINGUP::SETCOILSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETCOILSRESPONSE")
  (make-package "DOBOT_BRINGUP::SETCOILSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetCoilsRequest
  :super ros::object
  :slots (_index _addr _count _valTab ))

(defmethod dobot_bringup::SetCoilsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:addr __addr) 0)
    ((:count __count) 0)
    ((:valTab __valTab) "")
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _addr (round __addr))
   (setq _count (round __count))
   (setq _valTab (string __valTab))
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
  (:valTab
   (&optional __valTab)
   (if __valTab (setq _valTab __valTab)) _valTab)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _addr
    4
    ;; int32 _count
    4
    ;; string _valTab
    4 (length _valTab)
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
     ;; string _valTab
       (write-long (length _valTab) s) (princ _valTab s)
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
   ;; string _valTab
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _valTab (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::SetCoilsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetCoilsResponse
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

(defclass dobot_bringup::SetCoils
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetCoils :md5sum-) "b96ff1589f34f54f6a9a01053552fb29")
(setf (get dobot_bringup::SetCoils :datatype-) "dobot_bringup/SetCoils")
(setf (get dobot_bringup::SetCoils :request) dobot_bringup::SetCoilsRequest)
(setf (get dobot_bringup::SetCoils :response) dobot_bringup::SetCoilsResponse)

(defmethod dobot_bringup::SetCoilsRequest
  (:response () (instance dobot_bringup::SetCoilsResponse :init)))

(setf (get dobot_bringup::SetCoilsRequest :md5sum-) "b96ff1589f34f54f6a9a01053552fb29")
(setf (get dobot_bringup::SetCoilsRequest :datatype-) "dobot_bringup/SetCoilsRequest")
(setf (get dobot_bringup::SetCoilsRequest :definition-)
      "int32 index
int32 addr
int32 count
string valTab
---
int32 res
")

(setf (get dobot_bringup::SetCoilsResponse :md5sum-) "b96ff1589f34f54f6a9a01053552fb29")
(setf (get dobot_bringup::SetCoilsResponse :datatype-) "dobot_bringup/SetCoilsResponse")
(setf (get dobot_bringup::SetCoilsResponse :definition-)
      "int32 index
int32 addr
int32 count
string valTab
---
int32 res
")



(provide :dobot_bringup/SetCoils "b96ff1589f34f54f6a9a01053552fb29")


