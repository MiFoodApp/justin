;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::MoveJog)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'MoveJog (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::MOVEJOG")
  (make-package "DOBOT_BRINGUP::MOVEJOG"))
(unless (find-package "DOBOT_BRINGUP::MOVEJOGREQUEST")
  (make-package "DOBOT_BRINGUP::MOVEJOGREQUEST"))
(unless (find-package "DOBOT_BRINGUP::MOVEJOGRESPONSE")
  (make-package "DOBOT_BRINGUP::MOVEJOGRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::MoveJogRequest
  :super ros::object
  :slots (_axisID _paramValue ))

(defmethod dobot_bringup::MoveJogRequest
  (:init
   (&key
    ((:axisID __axisID) "")
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _axisID (string __axisID))
   (setq _paramValue __paramValue)
   self)
  (:axisID
   (&optional __axisID)
   (if __axisID (setq _axisID __axisID)) _axisID)
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
  (:serialization-length
   ()
   (+
    ;; string _axisID
    4 (length _axisID)
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _axisID
       (write-long (length _axisID) s) (princ _axisID s)
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _axisID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _axisID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _paramValue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paramValue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paramValue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dobot_bringup::MoveJogResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::MoveJogResponse
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

(defclass dobot_bringup::MoveJog
  :super ros::object
  :slots ())

(setf (get dobot_bringup::MoveJog :md5sum-) "319211ff13c695539e6dfdbf43aeb58b")
(setf (get dobot_bringup::MoveJog :datatype-) "dobot_bringup/MoveJog")
(setf (get dobot_bringup::MoveJog :request) dobot_bringup::MoveJogRequest)
(setf (get dobot_bringup::MoveJog :response) dobot_bringup::MoveJogResponse)

(defmethod dobot_bringup::MoveJogRequest
  (:response () (instance dobot_bringup::MoveJogResponse :init)))

(setf (get dobot_bringup::MoveJogRequest :md5sum-) "319211ff13c695539e6dfdbf43aeb58b")
(setf (get dobot_bringup::MoveJogRequest :datatype-) "dobot_bringup/MoveJogRequest")
(setf (get dobot_bringup::MoveJogRequest :definition-)
      "string axisID
string[] paramValue
---
int32 res
")

(setf (get dobot_bringup::MoveJogResponse :md5sum-) "319211ff13c695539e6dfdbf43aeb58b")
(setf (get dobot_bringup::MoveJogResponse :datatype-) "dobot_bringup/MoveJogResponse")
(setf (get dobot_bringup::MoveJogResponse :definition-)
      "string axisID
string[] paramValue
---
int32 res
")



(provide :dobot_bringup/MoveJog "319211ff13c695539e6dfdbf43aeb58b")


