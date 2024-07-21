;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::SetHoldRegs)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'SetHoldRegs (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::SETHOLDREGS")
  (make-package "DOBOT_BRINGUP::SETHOLDREGS"))
(unless (find-package "DOBOT_BRINGUP::SETHOLDREGSREQUEST")
  (make-package "DOBOT_BRINGUP::SETHOLDREGSREQUEST"))
(unless (find-package "DOBOT_BRINGUP::SETHOLDREGSRESPONSE")
  (make-package "DOBOT_BRINGUP::SETHOLDREGSRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::SetHoldRegsRequest
  :super ros::object
  :slots (_index _addr _count _valTab _valtype ))

(defmethod dobot_bringup::SetHoldRegsRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:addr __addr) 0)
    ((:count __count) 0)
    ((:valTab __valTab) "")
    ((:valtype __valtype) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _addr (round __addr))
   (setq _count (round __count))
   (setq _valTab (string __valTab))
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
  (:valTab
   (&optional __valTab)
   (if __valTab (setq _valTab __valTab)) _valTab)
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
    ;; string _valTab
    4 (length _valTab)
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
     ;; string _valTab
       (write-long (length _valTab) s) (princ _valTab s)
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
   ;; string _valTab
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _valTab (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass dobot_bringup::SetHoldRegsResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::SetHoldRegsResponse
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

(defclass dobot_bringup::SetHoldRegs
  :super ros::object
  :slots ())

(setf (get dobot_bringup::SetHoldRegs :md5sum-) "2c3a55409b3b9d0b6496cef91fd106ac")
(setf (get dobot_bringup::SetHoldRegs :datatype-) "dobot_bringup/SetHoldRegs")
(setf (get dobot_bringup::SetHoldRegs :request) dobot_bringup::SetHoldRegsRequest)
(setf (get dobot_bringup::SetHoldRegs :response) dobot_bringup::SetHoldRegsResponse)

(defmethod dobot_bringup::SetHoldRegsRequest
  (:response () (instance dobot_bringup::SetHoldRegsResponse :init)))

(setf (get dobot_bringup::SetHoldRegsRequest :md5sum-) "2c3a55409b3b9d0b6496cef91fd106ac")
(setf (get dobot_bringup::SetHoldRegsRequest :datatype-) "dobot_bringup/SetHoldRegsRequest")
(setf (get dobot_bringup::SetHoldRegsRequest :definition-)
      "
int32 index
int32 addr
int32 count
string valTab
string[]  valtype
---
int32 res
")

(setf (get dobot_bringup::SetHoldRegsResponse :md5sum-) "2c3a55409b3b9d0b6496cef91fd106ac")
(setf (get dobot_bringup::SetHoldRegsResponse :datatype-) "dobot_bringup/SetHoldRegsResponse")
(setf (get dobot_bringup::SetHoldRegsResponse :definition-)
      "
int32 index
int32 addr
int32 count
string valTab
string[]  valtype
---
int32 res
")



(provide :dobot_bringup/SetHoldRegs "2c3a55409b3b9d0b6496cef91fd106ac")


