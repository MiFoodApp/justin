;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetInRegs)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetInRegs (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETINREGS")
  (make-package "DOBOT_BRINGUP::GETINREGS"))
(unless (find-package "DOBOT_BRINGUP::GETINREGSREQUEST")
  (make-package "DOBOT_BRINGUP::GETINREGSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETINREGSRESPONSE")
  (make-package "DOBOT_BRINGUP::GETINREGSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetInRegsRequest
  :super ros::object
  :slots (_index _addr _count _valType ))

(defmethod dobot_bringup::GetInRegsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:addr __addr) 0)
    ((:count __count) 0)
    ((:valType __valType) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _addr (round __addr))
   (setq _count (round __count))
   (setq _valType __valType)
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
  (:valType
   (&optional __valType)
   (if __valType (setq _valType __valType)) _valType)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _addr
    4
    ;; int32 _count
    4
    ;; string[] _valType
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _valType)) 4
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
     ;; string[] _valType
     (write-long (length _valType) s)
     (dolist (elem _valType)
       (write-long (length elem) s) (princ elem s)
       )
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
   ;; string[] _valType
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valType (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _valType i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dobot_bringup::GetInRegsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetInRegsResponse
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

(defclass dobot_bringup::GetInRegs
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetInRegs :md5sum-) "52234d8943fca7222a9cdf043482aad5")
(setf (get dobot_bringup::GetInRegs :datatype-) "dobot_bringup/GetInRegs")
(setf (get dobot_bringup::GetInRegs :request) dobot_bringup::GetInRegsRequest)
(setf (get dobot_bringup::GetInRegs :response) dobot_bringup::GetInRegsResponse)

(defmethod dobot_bringup::GetInRegsRequest
  (:response () (instance dobot_bringup::GetInRegsResponse :init)))

(setf (get dobot_bringup::GetInRegsRequest :md5sum-) "52234d8943fca7222a9cdf043482aad5")
(setf (get dobot_bringup::GetInRegsRequest :datatype-) "dobot_bringup/GetInRegsRequest")
(setf (get dobot_bringup::GetInRegsRequest :definition-)
      "int32 index
int32 addr
int32 count
string[] valType
---
int32 res
")

(setf (get dobot_bringup::GetInRegsResponse :md5sum-) "52234d8943fca7222a9cdf043482aad5")
(setf (get dobot_bringup::GetInRegsResponse :datatype-) "dobot_bringup/GetInRegsResponse")
(setf (get dobot_bringup::GetInRegsResponse :definition-)
      "int32 index
int32 addr
int32 count
string[] valType
---
int32 res
")



(provide :dobot_bringup/GetInRegs "52234d8943fca7222a9cdf043482aad5")


