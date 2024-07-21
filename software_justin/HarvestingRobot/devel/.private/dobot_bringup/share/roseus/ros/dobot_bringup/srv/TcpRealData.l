;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::TcpRealData)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'TcpRealData (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::TCPREALDATA")
  (make-package "DOBOT_BRINGUP::TCPREALDATA"))
(unless (find-package "DOBOT_BRINGUP::TCPREALDATAREQUEST")
  (make-package "DOBOT_BRINGUP::TCPREALDATAREQUEST"))
(unless (find-package "DOBOT_BRINGUP::TCPREALDATARESPONSE")
  (make-package "DOBOT_BRINGUP::TCPREALDATARESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::TcpRealDataRequest
  :super ros::object
  :slots (_index _size ))

(defmethod dobot_bringup::TcpRealDataRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _size (round __size))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; uint32 _index
    4
    ;; uint32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;; uint32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::TcpRealDataResponse
  :super ros::object
  :slots (_real_data ))

(defmethod dobot_bringup::TcpRealDataResponse
  (:init
   (&key
    ((:real_data __real_data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _real_data __real_data)
   self)
  (:real_data
   (&optional __real_data)
   (if __real_data (setq _real_data __real_data)) _real_data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _real_data
    (* 1    (length _real_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _real_data
     (write-long (length _real_data) s)
     (princ _real_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _real_data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _real_data (make-array n :element-type :char))
     (replace _real_data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass dobot_bringup::TcpRealData
  :super ros::object
  :slots ())

(setf (get dobot_bringup::TcpRealData :md5sum-) "977c1f4a671c337178b1c34621b41356")
(setf (get dobot_bringup::TcpRealData :datatype-) "dobot_bringup/TcpRealData")
(setf (get dobot_bringup::TcpRealData :request) dobot_bringup::TcpRealDataRequest)
(setf (get dobot_bringup::TcpRealData :response) dobot_bringup::TcpRealDataResponse)

(defmethod dobot_bringup::TcpRealDataRequest
  (:response () (instance dobot_bringup::TcpRealDataResponse :init)))

(setf (get dobot_bringup::TcpRealDataRequest :md5sum-) "977c1f4a671c337178b1c34621b41356")
(setf (get dobot_bringup::TcpRealDataRequest :datatype-) "dobot_bringup/TcpRealDataRequest")
(setf (get dobot_bringup::TcpRealDataRequest :definition-)
      "uint32 index
uint32 size
---
uint8[] real_data

")

(setf (get dobot_bringup::TcpRealDataResponse :md5sum-) "977c1f4a671c337178b1c34621b41356")
(setf (get dobot_bringup::TcpRealDataResponse :datatype-) "dobot_bringup/TcpRealDataResponse")
(setf (get dobot_bringup::TcpRealDataResponse :definition-)
      "uint32 index
uint32 size
---
uint8[] real_data

")



(provide :dobot_bringup/TcpRealData "977c1f4a671c337178b1c34621b41356")


