;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::TcpDashboard)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'TcpDashboard (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TCPDASHBOARD")
  (make-package "DOBOT_BRINGUP::TCPDASHBOARD"))
(unless (find-package "DOBOT_BRINGUP::TCPDASHBOARDREQUEST")
  (make-package "DOBOT_BRINGUP::TCPDASHBOARDREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TCPDASHBOARDRESPONSE")
  (make-package "DOBOT_BRINGUP::TCPDASHBOARDRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::TcpDashboardRequest
  :super ros::object
  :slots (_command ))

(defmethod dobot_bringup::TcpDashboardRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::TcpDashboardResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot_bringup::TcpDashboardResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::TcpDashboard
  :super ros::object
  :slots ())

(setf (get dobot_bringup::TcpDashboard :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get dobot_bringup::TcpDashboard :datatype-) "dobot_bringup/TcpDashboard")
(setf (get dobot_bringup::TcpDashboard :request) dobot_bringup::TcpDashboardRequest)
(setf (get dobot_bringup::TcpDashboard :response) dobot_bringup::TcpDashboardResponse)

(defmethod dobot_bringup::TcpDashboardRequest
  (:response () (instance dobot_bringup::TcpDashboardResponse :init)))

(setf (get dobot_bringup::TcpDashboardRequest :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get dobot_bringup::TcpDashboardRequest :datatype-) "dobot_bringup/TcpDashboardRequest")
(setf (get dobot_bringup::TcpDashboardRequest :definition-)
      "string command
---
string result

")

(setf (get dobot_bringup::TcpDashboardResponse :md5sum-) "e62ac06cf7c221e8f3746d0b18c22a3b")
(setf (get dobot_bringup::TcpDashboardResponse :datatype-) "dobot_bringup/TcpDashboardResponse")
(setf (get dobot_bringup::TcpDashboardResponse :definition-)
      "string command
---
string result

")



(provide :dobot_bringup/TcpDashboard "e62ac06cf7c221e8f3746d0b18c22a3b")


