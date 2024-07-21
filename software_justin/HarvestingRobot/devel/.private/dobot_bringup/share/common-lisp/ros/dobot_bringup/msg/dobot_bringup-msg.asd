
(cl:in-package :asdf)

(defsystem "dobot_bringup-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
    (:file "ToolVectorActual" :depends-on ("_package_ToolVectorActual"))
    (:file "_package_ToolVectorActual" :depends-on ("_package"))
  ))