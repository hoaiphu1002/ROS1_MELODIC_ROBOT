; Auto-generated. Do not edit!


(cl:in-package utils-msg)


;//! \htmlinclude cmd_vel.msg.html

(cl:defclass <cmd_vel> (roslisp-msg-protocol:ros-message)
  ((v_left
    :reader v_left
    :initarg :v_left
    :type cl:float
    :initform 0.0)
   (v_right
    :reader v_right
    :initarg :v_right
    :type cl:float
    :initform 0.0)
   (v_left_stm
    :reader v_left_stm
    :initarg :v_left_stm
    :type cl:float
    :initform 0.0)
   (v_right_stm
    :reader v_right_stm
    :initarg :v_right_stm
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmd_vel (<cmd_vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name utils-msg:<cmd_vel> is deprecated: use utils-msg:cmd_vel instead.")))

(cl:ensure-generic-function 'v_left-val :lambda-list '(m))
(cl:defmethod v_left-val ((m <cmd_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:v_left-val is deprecated.  Use utils-msg:v_left instead.")
  (v_left m))

(cl:ensure-generic-function 'v_right-val :lambda-list '(m))
(cl:defmethod v_right-val ((m <cmd_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:v_right-val is deprecated.  Use utils-msg:v_right instead.")
  (v_right m))

(cl:ensure-generic-function 'v_left_stm-val :lambda-list '(m))
(cl:defmethod v_left_stm-val ((m <cmd_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:v_left_stm-val is deprecated.  Use utils-msg:v_left_stm instead.")
  (v_left_stm m))

(cl:ensure-generic-function 'v_right_stm-val :lambda-list '(m))
(cl:defmethod v_right_stm-val ((m <cmd_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:v_right_stm-val is deprecated.  Use utils-msg:v_right_stm instead.")
  (v_right_stm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_vel>) ostream)
  "Serializes a message object of type '<cmd_vel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_left_stm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_right_stm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_vel>) istream)
  "Deserializes a message object of type '<cmd_vel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_left_stm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_right_stm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_vel>)))
  "Returns string type for a message object of type '<cmd_vel>"
  "utils/cmd_vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_vel)))
  "Returns string type for a message object of type 'cmd_vel"
  "utils/cmd_vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_vel>)))
  "Returns md5sum for a message object of type '<cmd_vel>"
  "303b665cd559d8efcb8493212084ac67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_vel)))
  "Returns md5sum for a message object of type 'cmd_vel"
  "303b665cd559d8efcb8493212084ac67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_vel>)))
  "Returns full string definition for message of type '<cmd_vel>"
  (cl:format cl:nil "float32 v_left~%float32 v_right~%float32 v_left_stm~%float32 v_right_stm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_vel)))
  "Returns full string definition for message of type 'cmd_vel"
  (cl:format cl:nil "float32 v_left~%float32 v_right~%float32 v_left_stm~%float32 v_right_stm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_vel>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_vel>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_vel
    (cl:cons ':v_left (v_left msg))
    (cl:cons ':v_right (v_right msg))
    (cl:cons ':v_left_stm (v_left_stm msg))
    (cl:cons ':v_right_stm (v_right_stm msg))
))
