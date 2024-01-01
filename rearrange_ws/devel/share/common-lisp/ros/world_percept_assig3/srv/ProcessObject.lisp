; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude ProcessObject-request.msg.html

(cl:defclass <ProcessObject-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass ProcessObject-request (<ProcessObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<ProcessObject-request> is deprecated: use world_percept_assig3-srv:ProcessObject-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <ProcessObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:object_name-val is deprecated.  Use world_percept_assig3-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessObject-request>) ostream)
  "Serializes a message object of type '<ProcessObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessObject-request>) istream)
  "Deserializes a message object of type '<ProcessObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessObject-request>)))
  "Returns string type for a service object of type '<ProcessObject-request>"
  "world_percept_assig3/ProcessObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessObject-request)))
  "Returns string type for a service object of type 'ProcessObject-request"
  "world_percept_assig3/ProcessObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessObject-request>)))
  "Returns md5sum for a message object of type '<ProcessObject-request>"
  "32681a2870f0325b7d011635fd43aac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessObject-request)))
  "Returns md5sum for a message object of type 'ProcessObject-request"
  "32681a2870f0325b7d011635fd43aac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessObject-request>)))
  "Returns full string definition for message of type '<ProcessObject-request>"
  (cl:format cl:nil "# ProcessObject.srv~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessObject-request)))
  "Returns full string definition for message of type 'ProcessObject-request"
  (cl:format cl:nil "# ProcessObject.srv~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessObject-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude ProcessObject-response.msg.html

(cl:defclass <ProcessObject-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ProcessObject-response (<ProcessObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<ProcessObject-response> is deprecated: use world_percept_assig3-srv:ProcessObject-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ProcessObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:success-val is deprecated.  Use world_percept_assig3-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ProcessObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:message-val is deprecated.  Use world_percept_assig3-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessObject-response>) ostream)
  "Serializes a message object of type '<ProcessObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessObject-response>) istream)
  "Deserializes a message object of type '<ProcessObject-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessObject-response>)))
  "Returns string type for a service object of type '<ProcessObject-response>"
  "world_percept_assig3/ProcessObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessObject-response)))
  "Returns string type for a service object of type 'ProcessObject-response"
  "world_percept_assig3/ProcessObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessObject-response>)))
  "Returns md5sum for a message object of type '<ProcessObject-response>"
  "32681a2870f0325b7d011635fd43aac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessObject-response)))
  "Returns md5sum for a message object of type 'ProcessObject-response"
  "32681a2870f0325b7d011635fd43aac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessObject-response>)))
  "Returns full string definition for message of type '<ProcessObject-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessObject-response)))
  "Returns full string definition for message of type 'ProcessObject-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessObject-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessObject-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProcessObject)))
  'ProcessObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProcessObject)))
  'ProcessObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessObject)))
  "Returns string type for a service object of type '<ProcessObject>"
  "world_percept_assig3/ProcessObject")