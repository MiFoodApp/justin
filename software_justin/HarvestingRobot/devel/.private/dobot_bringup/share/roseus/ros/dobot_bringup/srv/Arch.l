;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::Arch)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'Arch (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::ARCH")
  (make-package "DOBOT_BRINGUP::ARCH"))
(unless (find-package "DOBOT_BRINGUP::ARCHREQUEST")
  (make-package "DOBOT_BRINGUP::ARCHREQUEST"))
(unless (find-package "DOBOT_BRINGUP::ARCHRESPONSE")
  (make-package "DOBOT_BRINGUP::ARCHRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ArchRequest
  :super ros::object
  :slots (_index _cpValue ))

(defmethod dobot_bringup::ArchRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:cpValue __cpValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _cpValue __cpValue)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:cpValue
   (&optional __cpValue)
   (if __cpValue (setq _cpValue __cpValue)) _cpValue)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; string[] _cpValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _cpValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; string[] _cpValue
     (write-long (length _cpValue) s)
     (dolist (elem _cpValue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _cpValue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cpValue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _cpValue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dobot_bringup::ArchResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::ArchResponse
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

(defclass dobot_bringup::Arch
  :super ros::object
  :slots ())

(setf (get dobot_bringup::Arch :md5sum-) "3132df4db7e08204c2a513558532b2ca")
(setf (get dobot_bringup::Arch :datatype-) "dobot_bringup/Arch")
(setf (get dobot_bringup::Arch :request) dobot_bringup::ArchRequest)
(setf (get dobot_bringup::Arch :response) dobot_bringup::ArchResponse)

(defmethod dobot_bringup::ArchRequest
  (:response () (instance dobot_bringup::ArchResponse :init)))

(setf (get dobot_bringup::ArchRequest :md5sum-) "3132df4db7e08204c2a513558532b2ca")
(setf (get dobot_bringup::ArchRequest :datatype-) "dobot_bringup/ArchRequest")
(setf (get dobot_bringup::ArchRequest :definition-)
      "# index --> 0 - 9

int32 index
string[] cpValue
---
int32 res
")

(setf (get dobot_bringup::ArchResponse :md5sum-) "3132df4db7e08204c2a513558532b2ca")
(setf (get dobot_bringup::ArchResponse :datatype-) "dobot_bringup/ArchResponse")
(setf (get dobot_bringup::ArchResponse :definition-)
      "# index --> 0 - 9

int32 index
string[] cpValue
---
int32 res
")



(provide :dobot_bringup/Arch "3132df4db7e08204c2a513558532b2ca")


