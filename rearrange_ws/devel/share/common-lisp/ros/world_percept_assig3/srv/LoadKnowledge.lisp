; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude LoadKnowledge-request.msg.html

(cl:defclass <LoadKnowledge-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:integer
    :initform 0))
)

(cl:defclass LoadKnowledge-request (<LoadKnowledge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadKnowledge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadKnowledge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<LoadKnowledge-request> is deprecated: use world_percept_assig3-srv:LoadKnowledge-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LoadKnowledge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:start-val is deprecated.  Use world_percept_assig3-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadKnowledge-request>) ostream)
  "Serializes a message object of type '<LoadKnowledge-request>"
  (cl:let* ((signed (cl:slot-value msg 'start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadKnowledge-request>) istream)
  "Deserializes a message object of type '<LoadKnowledge-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadKnowledge-request>)))
  "Returns string type for a service object of type '<LoadKnowledge-request>"
  "world_percept_assig3/LoadKnowledgeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadKnowledge-request)))
  "Returns string type for a service object of type 'LoadKnowledge-request"
  "world_percept_assig3/LoadKnowledgeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadKnowledge-request>)))
  "Returns md5sum for a message object of type '<LoadKnowledge-request>"
  "9d9359c2e08422f16683a8ebec668cb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadKnowledge-request)))
  "Returns md5sum for a message object of type 'LoadKnowledge-request"
  "9d9359c2e08422f16683a8ebec668cb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadKnowledge-request>)))
  "Returns full string definition for message of type '<LoadKnowledge-request>"
  (cl:format cl:nil "# Request is an integer called “start”~%int64 start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadKnowledge-request)))
  "Returns full string definition for message of type 'LoadKnowledge-request"
  (cl:format cl:nil "# Request is an integer called “start”~%int64 start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadKnowledge-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadKnowledge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadKnowledge-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude LoadKnowledge-response.msg.html

(cl:defclass <LoadKnowledge-response> (roslisp-msg-protocol:ros-message)
  ((confirm
    :reader confirm
    :initarg :confirm
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadKnowledge-response (<LoadKnowledge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadKnowledge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadKnowledge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<LoadKnowledge-response> is deprecated: use world_percept_assig3-srv:LoadKnowledge-response instead.")))

(cl:ensure-generic-function 'confirm-val :lambda-list '(m))
(cl:defmethod confirm-val ((m <LoadKnowledge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:confirm-val is deprecated.  Use world_percept_assig3-srv:confirm instead.")
  (confirm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadKnowledge-response>) ostream)
  "Serializes a message object of type '<LoadKnowledge-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirm) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadKnowledge-response>) istream)
  "Deserializes a message object of type '<LoadKnowledge-response>"
    (cl:setf (cl:slot-value msg 'confirm) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadKnowledge-response>)))
  "Returns string type for a service object of type '<LoadKnowledge-response>"
  "world_percept_assig3/LoadKnowledgeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadKnowledge-response)))
  "Returns string type for a service object of type 'LoadKnowledge-response"
  "world_percept_assig3/LoadKnowledgeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadKnowledge-response>)))
  "Returns md5sum for a message object of type '<LoadKnowledge-response>"
  "9d9359c2e08422f16683a8ebec668cb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadKnowledge-response)))
  "Returns md5sum for a message object of type 'LoadKnowledge-response"
  "9d9359c2e08422f16683a8ebec668cb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadKnowledge-response>)))
  "Returns full string definition for message of type '<LoadKnowledge-response>"
  (cl:format cl:nil "#  Response is a boolean called “confirm”~%bool confirm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadKnowledge-response)))
  "Returns full string definition for message of type 'LoadKnowledge-response"
  (cl:format cl:nil "#  Response is a boolean called “confirm”~%bool confirm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadKnowledge-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadKnowledge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadKnowledge-response
    (cl:cons ':confirm (confirm msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadKnowledge)))
  'LoadKnowledge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadKnowledge)))
  'LoadKnowledge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadKnowledge)))
  "Returns string type for a service object of type '<LoadKnowledge>"
  "world_percept_assig3/LoadKnowledge")