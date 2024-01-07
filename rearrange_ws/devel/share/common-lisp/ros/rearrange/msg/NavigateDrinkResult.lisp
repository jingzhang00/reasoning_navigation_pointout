; Auto-generated. Do not edit!


(cl:in-package rearrange-msg)


;//! \htmlinclude NavigateDrinkResult.msg.html

(cl:defclass <NavigateDrinkResult> (roslisp-msg-protocol:ros-message)
  ((current_x
    :reader current_x
    :initarg :current_x
    :type cl:float
    :initform 0.0)
   (current_y
    :reader current_y
    :initarg :current_y
    :type cl:float
    :initform 0.0)
   (current_orientation_z
    :reader current_orientation_z
    :initarg :current_orientation_z
    :type cl:float
    :initform 0.0)
   (current_orientation_w
    :reader current_orientation_w
    :initarg :current_orientation_w
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavigateDrinkResult (<NavigateDrinkResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateDrinkResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateDrinkResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rearrange-msg:<NavigateDrinkResult> is deprecated: use rearrange-msg:NavigateDrinkResult instead.")))

(cl:ensure-generic-function 'current_x-val :lambda-list '(m))
(cl:defmethod current_x-val ((m <NavigateDrinkResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:current_x-val is deprecated.  Use rearrange-msg:current_x instead.")
  (current_x m))

(cl:ensure-generic-function 'current_y-val :lambda-list '(m))
(cl:defmethod current_y-val ((m <NavigateDrinkResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:current_y-val is deprecated.  Use rearrange-msg:current_y instead.")
  (current_y m))

(cl:ensure-generic-function 'current_orientation_z-val :lambda-list '(m))
(cl:defmethod current_orientation_z-val ((m <NavigateDrinkResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:current_orientation_z-val is deprecated.  Use rearrange-msg:current_orientation_z instead.")
  (current_orientation_z m))

(cl:ensure-generic-function 'current_orientation_w-val :lambda-list '(m))
(cl:defmethod current_orientation_w-val ((m <NavigateDrinkResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-msg:current_orientation_w-val is deprecated.  Use rearrange-msg:current_orientation_w instead.")
  (current_orientation_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateDrinkResult>) ostream)
  "Serializes a message object of type '<NavigateDrinkResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_orientation_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_orientation_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateDrinkResult>) istream)
  "Deserializes a message object of type '<NavigateDrinkResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_orientation_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_orientation_w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateDrinkResult>)))
  "Returns string type for a message object of type '<NavigateDrinkResult>"
  "rearrange/NavigateDrinkResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateDrinkResult)))
  "Returns string type for a message object of type 'NavigateDrinkResult"
  "rearrange/NavigateDrinkResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateDrinkResult>)))
  "Returns md5sum for a message object of type '<NavigateDrinkResult>"
  "5332c945bfb39768317dc31e78fb16d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateDrinkResult)))
  "Returns md5sum for a message object of type 'NavigateDrinkResult"
  "5332c945bfb39768317dc31e78fb16d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateDrinkResult>)))
  "Returns full string definition for message of type '<NavigateDrinkResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%float32 current_x~%float32 current_y~%float32 current_orientation_z~%float32 current_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateDrinkResult)))
  "Returns full string definition for message of type 'NavigateDrinkResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%float32 current_x~%float32 current_y~%float32 current_orientation_z~%float32 current_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateDrinkResult>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateDrinkResult>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateDrinkResult
    (cl:cons ':current_x (current_x msg))
    (cl:cons ':current_y (current_y msg))
    (cl:cons ':current_orientation_z (current_orientation_z msg))
    (cl:cons ':current_orientation_w (current_orientation_w msg))
))
