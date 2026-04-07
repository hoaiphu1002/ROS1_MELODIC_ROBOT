; Auto-generated. Do not edit!


(cl:in-package utils-msg)


;//! \htmlinclude pose_robot.msg.html

(cl:defclass <pose_robot> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_robot (<pose_robot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_robot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_robot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name utils-msg:<pose_robot> is deprecated: use utils-msg:pose_robot instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <pose_robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:x-val is deprecated.  Use utils-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <pose_robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:y-val is deprecated.  Use utils-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <pose_robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:yaw-val is deprecated.  Use utils-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_robot>) ostream)
  "Serializes a message object of type '<pose_robot>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_robot>) istream)
  "Deserializes a message object of type '<pose_robot>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_robot>)))
  "Returns string type for a message object of type '<pose_robot>"
  "utils/pose_robot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_robot)))
  "Returns string type for a message object of type 'pose_robot"
  "utils/pose_robot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_robot>)))
  "Returns md5sum for a message object of type '<pose_robot>"
  "47802147045815b06859cca542c21d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_robot)))
  "Returns md5sum for a message object of type 'pose_robot"
  "47802147045815b06859cca542c21d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_robot>)))
  "Returns full string definition for message of type '<pose_robot>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_robot)))
  "Returns full string definition for message of type 'pose_robot"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_robot>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_robot>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_robot
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
))
