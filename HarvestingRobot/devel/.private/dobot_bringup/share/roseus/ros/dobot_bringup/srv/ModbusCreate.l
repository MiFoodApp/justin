;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::ModbusCreate)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'ModbusCreate (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::MODBUSCREATE")
  (make-package "DOBOT_BRINGUP::MODBUSCREATE"))
(unless (find-package "DOBOT_BRINGUP::MODBUSCREATEREQUEST")
  (make-package "DOBOT_BRINGUP::MODBUSCREATEREQUEST"))
(unless (find-package "DOBOT_BRINGUP::MODBUSCREATERESPONSE")
  (make-package "DOBOT_BRINGUP::MODBUSCREATERESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::ModbusCreateRequest
  :super ros::object
  :slots (_ip _port _slave_id _is_rtu ))

(defmethod dobot_bringup::ModbusCreateRequest
  (:init
   (&key
    ((:ip __ip) "")
    ((:port __port) 0)
    ((:slave_id __slave_id) 0)
    ((:is_rtu __is_rtu) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _ip (string __ip))
   (setq _port (round __port))
   (setq _slave_id (round __slave_id))
   (setq _is_rtu __is_rtu)
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:slave_id
   (&optional __slave_id)
   (if __slave_id (setq _slave_id __slave_id)) _slave_id)
  (:is_rtu
   (&optional __is_rtu)
   (if __is_rtu (setq _is_rtu __is_rtu)) _is_rtu)
  (:serialization-length
   ()
   (+
    ;; string _ip
    4 (length _ip)
    ;; int32 _port
    4
    ;; int32 _slave_id
    4
    ;; int32[] _is_rtu
    (* 4    (length _is_rtu)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; int32 _port
       (write-long _port s)
     ;; int32 _slave_id
       (write-long _slave_id s)
     ;; int32[] _is_rtu
     (write-long (length _is_rtu) s)
     (dotimes (i (length _is_rtu))
       (write-long (elt _is_rtu i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _slave_id
     (setq _slave_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _is_rtu
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_rtu (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _is_rtu i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass dobot_bringup::ModbusCreateResponse
  :super ros::object
  :slots (_res _index ))

(defmethod dobot_bringup::ModbusCreateResponse
  (:init
   (&key
    ((:res __res) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _res (round __res))
   (setq _index (round __index))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int32 _res
    4
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _res
       (write-long _res s)
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _res
     (setq _res (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot_bringup::ModbusCreate
  :super ros::object
  :slots ())

(setf (get dobot_bringup::ModbusCreate :md5sum-) "81859286568c49567356da01e39e6422")
(setf (get dobot_bringup::ModbusCreate :datatype-) "dobot_bringup/ModbusCreate")
(setf (get dobot_bringup::ModbusCreate :request) dobot_bringup::ModbusCreateRequest)
(setf (get dobot_bringup::ModbusCreate :response) dobot_bringup::ModbusCreateResponse)

(defmethod dobot_bringup::ModbusCreateRequest
  (:response () (instance dobot_bringup::ModbusCreateResponse :init)))

(setf (get dobot_bringup::ModbusCreateRequest :md5sum-) "81859286568c49567356da01e39e6422")
(setf (get dobot_bringup::ModbusCreateRequest :datatype-) "dobot_bringup/ModbusCreateRequest")
(setf (get dobot_bringup::ModbusCreateRequest :definition-)
      "string ip
int32 port
int32 slave_id
int32[] is_rtu

---
int32 res
int32 index
")

(setf (get dobot_bringup::ModbusCreateResponse :md5sum-) "81859286568c49567356da01e39e6422")
(setf (get dobot_bringup::ModbusCreateResponse :datatype-) "dobot_bringup/ModbusCreateResponse")
(setf (get dobot_bringup::ModbusCreateResponse :definition-)
      "string ip
int32 port
int32 slave_id
int32[] is_rtu

---
int32 res
int32 index
")



(provide :dobot_bringup/ModbusCreate "81859286568c49567356da01e39e6422")


