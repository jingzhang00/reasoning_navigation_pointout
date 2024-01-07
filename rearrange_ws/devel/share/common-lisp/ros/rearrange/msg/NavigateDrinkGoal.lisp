; Auto-generated. Do not edit!


(cl:in-package rearrange-msg)


;//! \htmlinclude NavigateDrinkGoal.msg.html

(cl:defclass <NavigateDrinkGoal> (roslisp-msg-protocol:ros-message)
  ((drink_name
    :reader drink_name
    :initarg :drink_name
    :type cl:string
    :initform "")
   (target_x
    :reader target_x
    :initarg :target_x
    :type cl:float
    :initform 0.0)
   (target_y
    :reader target_y
    :initarg :target_y
    :type cl:float
    :initform 0.0)
   (target_orientation_z
    :reader target_orientation_z
    :initarg :target_orientation_z
    :type cl:float
    :initform 0.0)
   (target_orientation_w
    :reader target_orientation_w
    :initarg :target_orientation_w
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavigateDrinkGoal (<NavigateDrinkGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateDrinkGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateDrinkGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rearrange-msg:<NavigateDrinkGoal> is deprecated: use rearrange-msg:NavigateDrinkGoal instead.")))

(cl:ensure-generic-function 'drink_name-val :lambda-list '(m))
(cl:defmethod drink_name-val ((m <NavigateDrinkGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:drink_name-val is deprecated.  Use rearrange-msg:drink_name instead.")
  (drink_name m))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <NavigateDrinkGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:target_x-val is deprecated.  Use rearrange-msg:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <NavigateDrinkGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:target_y-val is deprecated.  Use rearrange-msg:target_y instead.")
  (target_y m))

(cl:ensure-generic-function 'target_orientation_z-val :lambda-list '(m))
(cl:defmethod target_orientation_z-val ((m <NavigateDrinkGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:target_orientation_z-val is deprecated.  Use rearrange-msg:target_orientation_z instead.")
  (target_orientation_z m))

(cl:ensure-generic-function 'target_orientation_w-val :lambda-list '(m))
(cl:defmethod target_orientation_w-val ((m <NavigateDrinkGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:target_orientation_w-val is deprecated.  Use rearrange-msg:target_orientation_w instead.")
  (target_orientation_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateDrinkGoal>) ostream)
  "Serializes a message object of type '<NavigateDrinkGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'drink_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'drink_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_orientation_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_orientation_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateDrinkGoal>) istream)
  "Deserializes a message object of type '<NavigateDrinkGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drink_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'drink_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_orientation_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_orientation_w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateDrinkGoal>)))
  "Returns string type for a message object of type '<NavigateDrinkGoal>"
  "rearrange/NavigateDrinkGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateDrinkGoal)))
  "Returns string type for a message object of type 'NavigateDrinkGoal"
  "rearrange/NavigateDrinkGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateDrinkGoal>)))
  "Returns md5sum for a message object of type '<NavigateDrinkGoal>"
  "60af8d6775a7d74b1f37c4f2a62945fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateDrinkGoal)))
  "Returns md5sum for a message object of type 'NavigateDrinkGoal"
  "60af8d6775a7d74b1f37c4f2a62945fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateDrinkGoal>)))
  "Returns full string definition for message of type '<NavigateDrinkGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string drink_name~%float32 target_x~%float32 target_y~%float32 target_orientation_z~%float32 target_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateDrinkGoal)))
  "Returns full string definition for message of type 'NavigateDrinkGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string drink_name~%float32 target_x~%float32 target_y~%float32 target_orientation_z~%float32 target_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateDrinkGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'drink_name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateDrinkGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateDrinkGoal
    (cl:cons ':drink_name (drink_name msg))
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
    (cl:cons ':target_orientation_z (target_orientation_z msg))
    (cl:cons ':target_orientation_w (target_orientation_w msg))
))
