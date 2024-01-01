; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude SendGoal-request.msg.html

(cl:defclass <SendGoal-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
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

(cl:defclass SendGoal-request (<SendGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<SendGoal-request> is deprecated: use world_percept_assig3-srv:SendGoal-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SendGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_name-val is deprecated.  Use world_percept_assig3-srv:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <SendGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_x-val is deprecated.  Use world_percept_assig3-srv:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <SendGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_y-val is deprecated.  Use world_percept_assig3-srv:target_y instead.")
  (target_y m))

(cl:ensure-generic-function 'target_orientation_z-val :lambda-list '(m))
(cl:defmethod target_orientation_z-val ((m <SendGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_orientation_z-val is deprecated.  Use world_percept_assig3-srv:target_orientation_z instead.")
  (target_orientation_z m))

(cl:ensure-generic-function 'target_orientation_w-val :lambda-list '(m))
(cl:defmethod target_orientation_w-val ((m <SendGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_orientation_w-val is deprecated.  Use world_percept_assig3-srv:target_orientation_w instead.")
  (target_orientation_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendGoal-request>) ostream)
  "Serializes a message object of type '<SendGoal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_orientation_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_orientation_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendGoal-request>) istream)
  "Deserializes a message object of type '<SendGoal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_orientation_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_orientation_w) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendGoal-request>)))
  "Returns string type for a service object of type '<SendGoal-request>"
  "world_percept_assig3/SendGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendGoal-request)))
  "Returns string type for a service object of type 'SendGoal-request"
  "world_percept_assig3/SendGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendGoal-request>)))
  "Returns md5sum for a message object of type '<SendGoal-request>"
  "c6c193b83d729c060fe663d1f1fec285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendGoal-request)))
  "Returns md5sum for a message object of type 'SendGoal-request"
  "c6c193b83d729c060fe663d1f1fec285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendGoal-request>)))
  "Returns full string definition for message of type '<SendGoal-request>"
  (cl:format cl:nil "# SendGoal.srv~%string target_name~%float64 target_x~%float64 target_y~%float64 target_orientation_z~%float64 target_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendGoal-request)))
  "Returns full string definition for message of type 'SendGoal-request"
  (cl:format cl:nil "# SendGoal.srv~%string target_name~%float64 target_x~%float64 target_y~%float64 target_orientation_z~%float64 target_orientation_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendGoal-request
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
    (cl:cons ':target_orientation_z (target_orientation_z msg))
    (cl:cons ':target_orientation_w (target_orientation_w msg))
))
;//! \htmlinclude SendGoal-response.msg.html

(cl:defclass <SendGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendGoal-response (<SendGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<SendGoal-response> is deprecated: use world_percept_assig3-srv:SendGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:success-val is deprecated.  Use world_percept_assig3-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendGoal-response>) ostream)
  "Serializes a message object of type '<SendGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendGoal-response>) istream)
  "Deserializes a message object of type '<SendGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendGoal-response>)))
  "Returns string type for a service object of type '<SendGoal-response>"
  "world_percept_assig3/SendGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendGoal-response)))
  "Returns string type for a service object of type 'SendGoal-response"
  "world_percept_assig3/SendGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendGoal-response>)))
  "Returns md5sum for a message object of type '<SendGoal-response>"
  "c6c193b83d729c060fe663d1f1fec285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendGoal-response)))
  "Returns md5sum for a message object of type 'SendGoal-response"
  "c6c193b83d729c060fe663d1f1fec285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendGoal-response>)))
  "Returns full string definition for message of type '<SendGoal-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendGoal-response)))
  "Returns full string definition for message of type 'SendGoal-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendGoal-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendGoal)))
  'SendGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendGoal)))
  'SendGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendGoal)))
  "Returns string type for a service object of type '<SendGoal>"
  "world_percept_assig3/SendGoal")