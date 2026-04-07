
(cl:in-package :asdf)

(defsystem "utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cmd_vel" :depends-on ("_package_cmd_vel"))
    (:file "_package_cmd_vel" :depends-on ("_package"))
    (:file "pose_robot" :depends-on ("_package_pose_robot"))
    (:file "_package_pose_robot" :depends-on ("_package"))
    (:file "waypoints" :depends-on ("_package_waypoints"))
    (:file "_package_waypoints" :depends-on ("_package"))
  ))