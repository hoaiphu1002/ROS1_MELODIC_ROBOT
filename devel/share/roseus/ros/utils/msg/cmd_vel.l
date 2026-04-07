;; Auto-generated. Do not edit!


(when (boundp 'utils::cmd_vel)
  (if (not (find-package "UTILS"))
    (make-package "UTILS"))
  (shadow 'cmd_vel (find-package "UTILS")))
(unless (find-package "UTILS::CMD_VEL")
  (make-package "UTILS::CMD_VEL"))

(in-package "ROS")
;;//! \htmlinclude cmd_vel.msg.html


(defclass utils::cmd_vel
  :super ros::object
  :slots (_v_left _v_right _v_left_stm _v_right_stm ))

(defmethod utils::cmd_vel
  (:init
   (&key
    ((:v_left __v_left) 0.0)
    ((:v_right __v_right) 0.0)
    ((:v_left_stm __v_left_stm) 0.0)
    ((:v_right_stm __v_right_stm) 0.0)
    )
   (send-super :init)
   (setq _v_left (float __v_left))
   (setq _v_right (float __v_right))
   (setq _v_left_stm (float __v_left_stm))
   (setq _v_right_stm (float __v_right_stm))
   self)
  (:v_left
   (&optional __v_left)
   (if __v_left (setq _v_left __v_left)) _v_left)
  (:v_right
   (&optional __v_right)
   (if __v_right (setq _v_right __v_right)) _v_right)
  (:v_left_stm
   (&optional __v_left_stm)
   (if __v_left_stm (setq _v_left_stm __v_left_stm)) _v_left_stm)
  (:v_right_stm
   (&optional __v_right_stm)
   (if __v_right_stm (setq _v_right_stm __v_right_stm)) _v_right_stm)
  (:serialization-length
   ()
   (+
    ;; float32 _v_left
    4
    ;; float32 _v_right
    4
    ;; float32 _v_left_stm
    4
    ;; float32 _v_right_stm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v_left
       (sys::poke _v_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_right
       (sys::poke _v_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_left_stm
       (sys::poke _v_left_stm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_right_stm
       (sys::poke _v_right_stm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _v_left
     (setq _v_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_right
     (setq _v_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_left_stm
     (setq _v_left_stm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_right_stm
     (setq _v_right_stm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get utils::cmd_vel :md5sum-) "303b665cd559d8efcb8493212084ac67")
(setf (get utils::cmd_vel :datatype-) "utils/cmd_vel")
(setf (get utils::cmd_vel :definition-)
      "float32 v_left
float32 v_right
float32 v_left_stm
float32 v_right_stm

")



(provide :utils/cmd_vel "303b665cd559d8efcb8493212084ac67")


