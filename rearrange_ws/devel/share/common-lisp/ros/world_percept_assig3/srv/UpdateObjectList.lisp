; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude UpdateObjectList-request.msg.html

(cl:defclass <UpdateObjectList-request> (roslisp-msg-protocol:ros-message)
  ((object_pose
    :reader object_pose
    :initarg :object_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateObjectList-request (<UpdateObjectList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateObjectList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateObjectList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<UpdateObjectList-request> is deprecated: use world_percept_assig3-srv:UpdateObjectList-request instead.")))

(cl:ensure-generic-function 'object_pose-val :lambda-list '(m))
(cl:defmethod object_pose-val ((m <UpdateObjectList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:object_pose-val is deprecated.  Use world_percept_assig3-srv:object_pose instead.")
  (object_pose m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <UpdateObjectList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:object_name-val is deprecated.  Use world_percept_assig3-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateObjectList-request>) ostream)
  "Serializes a message object of type '<UpdateObjectList-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateObjectList-request>) istream)
  "Deserializes a message object of type '<UpdateObjectList-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_pose) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateObjectList-request>)))
  "Returns string type for a service object of type '<UpdateObjectList-request>"
  "world_percept_assig3/UpdateObjectListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObjectList-request)))
  "Returns string type for a service object of type 'UpdateObjectList-request"
  "world_percept_assig3/UpdateObjectListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateObjectList-request>)))
  "Returns md5sum for a message object of type '<UpdateObjectList-request>"
  "07fb332925eec5f4d2f3c7b2da4de91d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateObjectList-request)))
  "Returns md5sum for a message object of type 'UpdateObjectList-request"
  "07fb332925eec5f4d2f3c7b2da4de91d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateObjectList-request>)))
  "Returns full string definition for message of type '<UpdateObjectList-request>"
  (cl:format cl:nil "# New Object for the list~%geometry_msgs/Pose object_pose~%string object_name~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateObjectList-request)))
  "Returns full string definition for message of type 'UpdateObjectList-request"
  (cl:format cl:nil "# New Object for the list~%geometry_msgs/Pose object_pose~%string object_name~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateObjectList-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_pose))
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateObjectList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateObjectList-request
    (cl:cons ':object_pose (object_pose msg))
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude UpdateObjectList-response.msg.html

(cl:defclass <UpdateObjectList-response> (roslisp-msg-protocol:ros-message)
  ((confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateObjectList-response (<UpdateObjectList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateObjectList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateObjectList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<UpdateObjectList-response> is deprecated: use world_percept_assig3-srv:UpdateObjectList-response instead.")))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <UpdateObjectList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:confirmation-val is deprecated.  Use world_percept_assig3-srv:confirmation instead.")
  (confirmation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateObjectList-response>) ostream)
  "Serializes a message object of type '<UpdateObjectList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateObjectList-response>) istream)
  "Deserializes a message object of type '<UpdateObjectList-response>"
    (cl:setf (cl:slot-value msg 'confirmation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateObjectList-response>)))
  "Returns string type for a service object of type '<UpdateObjectList-response>"
  "world_percept_assig3/UpdateObjectListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObjectList-response)))
  "Returns string type for a service object of type 'UpdateObjectList-response"
  "world_percept_assig3/UpdateObjectListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateObjectList-response>)))
  "Returns md5sum for a message object of type '<UpdateObjectList-response>"
  "07fb332925eec5f4d2f3c7b2da4de91d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateObjectList-response)))
  "Returns md5sum for a message object of type 'UpdateObjectList-response"
  "07fb332925eec5f4d2f3c7b2da4de91d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateObjectList-response>)))
  "Returns full string definition for message of type '<UpdateObjectList-response>"
  (cl:format cl:nil "bool confirmation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateObjectList-response)))
  "Returns full string definition for message of type 'UpdateObjectList-response"
  (cl:format cl:nil "bool confirmation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateObjectList-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateObjectList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateObjectList-response
    (cl:cons ':confirmation (confirmation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateObjectList)))
  'UpdateObjectList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateObjectList)))
  'UpdateObjectList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObjectList)))
  "Returns string type for a service object of type '<UpdateObjectList>"
  "world_percept_assig3/UpdateObjectList")