;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::GetSixForceData)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'GetSixForceData (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::GETSIXFORCEDATA")
  (make-package "DOBOT_BRINGUP::GETSIXFORCEDATA"))
(unless (find-package "DOBOT_BRINGUP::GETSIXFORCEDATAREQUEST")
  (make-package "DOBOT_BRINGUP::GETSIXFORCEDATAREQUEST"))
(unless (find-package "DOBOT_BRINGUP::GETSIXFORCEDATARESPONSE")
  (make-package "DOBOT_BRINGUP::GETSIXFORCEDATARESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::GetSixForceDataRequest
  :super ros::object
  :slots ())

(defmethod dobot_bringup::GetSixForceDataRequest
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

(defclass dobot_bringup::GetSixForceDataResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::GetSixForceDataResponse
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

(defclass dobot_bringup::GetSixForceData
  :super ros::object
  :slots ())

(setf (get dobot_bringup::GetSixForceData :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetSixForceData :datatype-) "dobot_bringup/GetSixForceData")
(setf (get dobot_bringup::GetSixForceData :request) dobot_bringup::GetSixForceDataRequest)
(setf (get dobot_bringup::GetSixForceData :response) dobot_bringup::GetSixForceDataResponse)

(defmethod dobot_bringup::GetSixForceDataRequest
  (:response () (instance dobot_bringup::GetSixForceDataResponse :init)))

(setf (get dobot_bringup::GetSixForceDataRequest :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetSixForceDataRequest :datatype-) "dobot_bringup/GetSixForceDataRequest")
(setf (get dobot_bringup::GetSixForceDataRequest :definition-)
      "
---
int32 res
")

(setf (get dobot_bringup::GetSixForceDataResponse :md5sum-) "ca16cfbd5443ad97f6cc7ffd6bb67292")
(setf (get dobot_bringup::GetSixForceDataResponse :datatype-) "dobot_bringup/GetSixForceDataResponse")
(setf (get dobot_bringup::GetSixForceDataResponse :definition-)
      "
---
int32 res
")



(provide :dobot_bringup/GetSixForceData "ca16cfbd5443ad97f6cc7ffd6bb67292")


