;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetHoldRegs)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetHoldRegs (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETHOLDREGS")
  (make-package "DOBOT_BRINGUP::GETHOLDREGS"))
(unless (find-package "DOBOT_BRINGUP::GETHOLDREGSREQUEST")
  (make-package "DOBOT_BRINGUP::GETHOLDREGSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETHOLDREGSRESPONSE")
  (make-package "DOBOT_BRINGUP::GETHOLDREGSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetHoldRegsRequest
  :super ros::object
  :slots (_index _addr _count _valtype ))

(defmethod dobot_bringup::GetHoldRegsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:addr __addr) 0)
    ((:count __count) 0)
    ((:valtype __valtype) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _addr (round __addr))
   (setq _count (round __count))
   (setq _valtype __valtype)
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
  (:valtype
   (&optional __valtype)
   (if __valtype (setq _valtype __valtype)) _valtype)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _addr
    4
    ;; int32 _count
    4
    ;; string[] _valtype
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _valtype)) 4
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
     ;; string[] _valtype
     (write-long (length _valtype) s)
     (dolist (elem _valtype)
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
   ;; string[] _valtype
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valtype (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _valtype i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dobot_bringup::GetHoldRegsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetHoldRegsResponse
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

(defclass dobot_bringup::GetHoldRegs
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetHoldRegs :md5sum-) "6c4d0215201339c310dc8bb40d2fe8ab")
(setf (get dobot_bringup::GetHoldRegs :datatype-) "dobot_bringup/GetHoldRegs")
(setf (get dobot_bringup::GetHoldRegs :request) dobot_bringup::GetHoldRegsRequest)
(setf (get dobot_bringup::GetHoldRegs :response) dobot_bringup::GetHoldRegsResponse)

(defmethod dobot_bringup::GetHoldRegsRequest
  (:response () (instance dobot_bringup::GetHoldRegsResponse :init)))

(setf (get dobot_bringup::GetHoldRegsRequest :md5sum-) "6c4d0215201339c310dc8bb40d2fe8ab")
(setf (get dobot_bringup::GetHoldRegsRequest :datatype-) "dobot_bringup/GetHoldRegsRequest")
(setf (get dobot_bringup::GetHoldRegsRequest :definition-)
      "
int32 index
int32 addr
int32 count
string[] valtype
---
int32 res
")

(setf (get dobot_bringup::GetHoldRegsResponse :md5sum-) "6c4d0215201339c310dc8bb40d2fe8ab")
(setf (get dobot_bringup::GetHoldRegsResponse :datatype-) "dobot_bringup/GetHoldRegsResponse")
(setf (get dobot_bringup::GetHoldRegsResponse :definition-)
      "
int32 index
int32 addr
int32 count
string[] valtype
---
int32 res
")



(provide :dobot_bringup/GetHoldRegs "6c4d0215201339c310dc8bb40d2fe8ab")


