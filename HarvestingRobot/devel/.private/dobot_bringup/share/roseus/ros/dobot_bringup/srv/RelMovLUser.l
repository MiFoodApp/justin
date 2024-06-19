;; Auto-generated. Do not edit!


(when (boundp 'dobot_bringup::RelMovLUser)
  (if (not (find-package "DOBOT_BRINGUP"))
    (make-package "DOBOT_BRINGUP"))
  (shadow 'RelMovLUser (find-package "DOBOT_BRINGUP")))
(unless (find-package "DOBOT_BRINGUP::RELMOVLUSER")
  (make-package "DOBOT_BRINGUP::RELMOVLUSER"))
(unless (find-package "DOBOT_BRINGUP::RELMOVLUSERREQUEST")
  (make-package "DOBOT_BRINGUP::RELMOVLUSERREQUEST"))
(unless (find-package "DOBOT_BRINGUP::RELMOVLUSERRESPONSE")
  (make-package "DOBOT_BRINGUP::RELMOVLUSERRESPONSE"))

(in-package "ROS")





(defclass dobot_bringup::RelMovLUserRequest
  :super ros::object
  :slots (_x _y _z _rx _ry _rz _user _paramValue ))

(defmethod dobot_bringup::RelMovLUserRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:rx __rx) 0.0)
    ((:ry __ry) 0.0)
    ((:rz __rz) 0.0)
    ((:user __user) 0)
    ((:paramValue __paramValue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _rx (float __rx))
   (setq _ry (float __ry))
   (setq _rz (float __rz))
   (setq _user (round __user))
   (setq _paramValue __paramValue)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:rx
   (&optional __rx)
   (if __rx (setq _rx __rx)) _rx)
  (:ry
   (&optional __ry)
   (if __ry (setq _ry __ry)) _ry)
  (:rz
   (&optional __rz)
   (if __rz (setq _rz __rz)) _rz)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:paramValue
   (&optional __paramValue)
   (if __paramValue (setq _paramValue __paramValue)) _paramValue)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _rx
    8
    ;; float64 _ry
    8
    ;; float64 _rz
    8
    ;; int32 _user
    4
    ;; string[] _paramValue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paramValue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rx
       (sys::poke _rx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ry
       (sys::poke _ry (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rz
       (sys::poke _rz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _user
       (write-long _user s)
     ;; string[] _paramValue
     (write-long (length _paramValue) s)
     (dolist (elem _paramValue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rx
     (setq _rx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ry
     (setq _ry (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rz
     (setq _rz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _user
     (setq _user (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(defclass dobot_bringup::RelMovLUserResponse
  :super ros::object
  :slots (_res ))

(defmethod dobot_bringup::RelMovLUserResponse
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

(defclass dobot_bringup::RelMovLUser
  :super ros::object
  :slots ())

(setf (get dobot_bringup::RelMovLUser :md5sum-) "7970102421ee401b86e32781f03dc410")
(setf (get dobot_bringup::RelMovLUser :datatype-) "dobot_bringup/RelMovLUser")
(setf (get dobot_bringup::RelMovLUser :request) dobot_bringup::RelMovLUserRequest)
(setf (get dobot_bringup::RelMovLUser :response) dobot_bringup::RelMovLUserResponse)

(defmethod dobot_bringup::RelMovLUserRequest
  (:response () (instance dobot_bringup::RelMovLUserResponse :init)))

(setf (get dobot_bringup::RelMovLUserRequest :md5sum-) "7970102421ee401b86e32781f03dc410")
(setf (get dobot_bringup::RelMovLUserRequest :datatype-) "dobot_bringup/RelMovLUserRequest")
(setf (get dobot_bringup::RelMovLUserRequest :definition-)
      "float64 x
float64 y
float64 z
float64 rx
float64 ry
float64 rz
int32 user
string[] paramValue

---

int32 res
")

(setf (get dobot_bringup::RelMovLUserResponse :md5sum-) "7970102421ee401b86e32781f03dc410")
(setf (get dobot_bringup::RelMovLUserResponse :datatype-) "dobot_bringup/RelMovLUserResponse")
(setf (get dobot_bringup::RelMovLUserResponse :definition-)
      "float64 x
float64 y
float64 z
float64 rx
float64 ry
float64 rz
int32 user
string[] paramValue

---

int32 res
")



(provide :dobot_bringup/RelMovLUser "7970102421ee401b86e32781f03dc410")


