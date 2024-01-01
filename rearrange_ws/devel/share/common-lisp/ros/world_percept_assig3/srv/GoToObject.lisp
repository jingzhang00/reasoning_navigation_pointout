; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude GoToObject-request.msg.html

(cl:defclass <GoToObject-request> (roslisp-msg-protocol:ros-message)
  ((target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass GoToObject-request (<GoToObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<GoToObject-request> is deprecated: use world_percept_assig3-srv:GoToObject-request instead.")))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <GoToObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:target_name-val is deprecated.  Use world_percept_assig3-srv:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToObject-request>) ostream)
  "Serializes a message object of type '<GoToObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToObject-request>) istream)
  "Deserializes a message object of type '<GoToObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToObject-request>)))
  "Returns string type for a service object of type '<GoToObject-request>"
  "world_percept_assig3/GoToObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToObject-request)))
  "Returns string type for a service object of type 'GoToObject-request"
  "world_percept_assig3/GoToObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToObject-request>)))
  "Returns md5sum for a message object of type '<GoToObject-request>"
  "b7de194fd0522df85d7a9bdf6a8e6897")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToObject-request)))
  "Returns md5sum for a message object of type 'GoToObject-request"
  "b7de194fd0522df85d7a9bdf6a8e6897")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToObject-request>)))
  "Returns full string definition for message of type '<GoToObject-request>"
  (cl:format cl:nil "# Request part of the service~%# Name of the object to go to~%string target_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToObject-request)))
  "Returns full string definition for message of type 'GoToObject-request"
  (cl:format cl:nil "# Request part of the service~%# Name of the object to go to~%string target_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToObject-request
    (cl:cons ':target_name (target_name msg))
))
;//! \htmlinclude GoToObject-response.msg.html

(cl:defclass <GoToObject-response> (roslisp-msg-protocol:ros-message)
  ((linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoToObject-response (<GoToObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<GoToObject-response> is deprecated: use world_percept_assig3-srv:GoToObject-response instead.")))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <GoToObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:linear_velocity-val is deprecated.  Use world_percept_assig3-srv:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <GoToObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:angular_velocity-val is deprecated.  Use world_percept_assig3-srv:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoToObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:success-val is deprecated.  Use world_percept_assig3-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToObject-response>) ostream)
  "Serializes a message object of type '<GoToObject-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToObject-response>) istream)
  "Deserializes a message object of type '<GoToObject-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToObject-response>)))
  "Returns string type for a service object of type '<GoToObject-response>"
  "world_percept_assig3/GoToObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToObject-response)))
  "Returns string type for a service object of type 'GoToObject-response"
  "world_percept_assig3/GoToObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToObject-response>)))
  "Returns md5sum for a message object of type '<GoToObject-response>"
  "b7de194fd0522df85d7a9bdf6a8e6897")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToObject-response)))
  "Returns md5sum for a message object of type 'GoToObject-response"
  "b7de194fd0522df85d7a9bdf6a8e6897")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToObject-response>)))
  "Returns full string definition for message of type '<GoToObject-response>"
  (cl:format cl:nil "# Response part of the service~%# Calculated linear velocity to move towards the object~%float64 linear_velocity~%~%float64 angular_velocity~%~%~%bool success~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToObject-response)))
  "Returns full string definition for message of type 'GoToObject-response"
  (cl:format cl:nil "# Response part of the service~%# Calculated linear velocity to move towards the object~%float64 linear_velocity~%~%float64 angular_velocity~%~%~%bool success~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToObject-response>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToObject-response
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToObject)))
  'GoToObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToObject)))
  'GoToObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToObject)))
  "Returns string type for a service object of type '<GoToObject>"
  "world_percept_assig3/GoToObject")