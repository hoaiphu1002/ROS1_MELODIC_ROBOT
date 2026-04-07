; Auto-generated. Do not edit!


(cl:in-package utils-msg)


;//! \htmlinclude waypoints.msg.html

(cl:defclass <waypoints> (roslisp-msg-protocol:ros-message)
  ((direction_x
    :reader direction_x
    :initarg :direction_x
    :type cl:float
    :initform 0.0)
   (direction_y
    :reader direction_y
    :initarg :direction_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass waypoints (<waypoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name utils-msg:<waypoints> is deprecated: use utils-msg:waypoints instead.")))

(cl:ensure-generic-function 'direction_x-val :lambda-list '(m))
(cl:defmethod direction_x-val ((m <waypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:direction_x-val is deprecated.  Use utils-msg:direction_x instead.")
  (direction_x m))

(cl:ensure-generic-function 'direction_y-val :lambda-list '(m))
(cl:defmethod direction_y-val ((m <waypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader utils-msg:direction_y-val is deprecated.  Use utils-msg:direction_y instead.")
  (direction_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoints>) ostream)
  "Serializes a message object of type '<waypoints>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoints>) istream)
  "Deserializes a message object of type '<waypoints>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoints>)))
  "Returns string type for a message object of type '<waypoints>"
  "utils/waypoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoints)))
  "Returns string type for a message object of type 'waypoints"
  "utils/waypoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoints>)))
  "Returns md5sum for a message object of type '<waypoints>"
  "f00f7d19d2890479eddb53378d35106c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoints)))
  "Returns md5sum for a message object of type 'waypoints"
  "f00f7d19d2890479eddb53378d35106c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoints>)))
  "Returns full string definition for message of type '<waypoints>"
  (cl:format cl:nil "float32 direction_x~%float32 direction_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoints)))
  "Returns full string definition for message of type 'waypoints"
  (cl:format cl:nil "float32 direction_x~%float32 direction_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoints>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoints>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoints
    (cl:cons ':direction_x (direction_x msg))
    (cl:cons ':direction_y (direction_y msg))
))
