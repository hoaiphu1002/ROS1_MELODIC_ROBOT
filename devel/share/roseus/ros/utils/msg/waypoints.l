;; Auto-generated. Do not edit!


(when (boundp 'utils::waypoints)
  (if (not (find-package "UTILS"))
    (make-package "UTILS"))
  (shadow 'waypoints (find-package "UTILS")))
(unless (find-package "UTILS::WAYPOINTS")
  (make-package "UTILS::WAYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude waypoints.msg.html


(defclass utils::waypoints
  :super ros::object
  :slots (_direction_x _direction_y ))

(defmethod utils::waypoints
  (:init
   (&key
    ((:direction_x __direction_x) 0.0)
    ((:direction_y __direction_y) 0.0)
    )
   (send-super :init)
   (setq _direction_x (float __direction_x))
   (setq _direction_y (float __direction_y))
   self)
  (:direction_x
   (&optional __direction_x)
   (if __direction_x (setq _direction_x __direction_x)) _direction_x)
  (:direction_y
   (&optional __direction_y)
   (if __direction_y (setq _direction_y __direction_y)) _direction_y)
  (:serialization-length
   ()
   (+
    ;; float32 _direction_x
    4
    ;; float32 _direction_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _direction_x
       (sys::poke _direction_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction_y
       (sys::poke _direction_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _direction_x
     (setq _direction_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction_y
     (setq _direction_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get utils::waypoints :md5sum-) "f00f7d19d2890479eddb53378d35106c")
(setf (get utils::waypoints :datatype-) "utils/waypoints")
(setf (get utils::waypoints :definition-)
      "float32 direction_x
float32 direction_y
")



(provide :utils/waypoints "f00f7d19d2890479eddb53378d35106c")


