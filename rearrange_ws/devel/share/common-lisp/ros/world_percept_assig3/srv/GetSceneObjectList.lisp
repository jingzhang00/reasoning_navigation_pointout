; Auto-generated. Do not edit!


(cl:in-package world_percept_assig3-srv)


;//! \htmlinclude GetSceneObjectList-request.msg.html

(cl:defclass <GetSceneObjectList-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetSceneObjectList-request (<GetSceneObjectList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSceneObjectList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSceneObjectList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<GetSceneObjectList-request> is deprecated: use world_percept_assig3-srv:GetSceneObjectList-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <GetSceneObjectList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:object_name-val is deprecated.  Use world_percept_assig3-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSceneObjectList-request>) ostream)
  "Serializes a message object of type '<GetSceneObjectList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSceneObjectList-request>) istream)
  "Deserializes a message object of type '<GetSceneObjectList-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSceneObjectList-request>)))
  "Returns string type for a service object of type '<GetSceneObjectList-request>"
  "world_percept_assig3/GetSceneObjectListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSceneObjectList-request)))
  "Returns string type for a service object of type 'GetSceneObjectList-request"
  "world_percept_assig3/GetSceneObjectListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSceneObjectList-request>)))
  "Returns md5sum for a message object of type '<GetSceneObjectList-request>"
  "49b647e60541a19da96e1aeac31fdfb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSceneObjectList-request)))
  "Returns md5sum for a message object of type 'GetSceneObjectList-request"
  "49b647e60541a19da96e1aeac31fdfb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSceneObjectList-request>)))
  "Returns full string definition for message of type '<GetSceneObjectList-request>"
  (cl:format cl:nil "# Name of the target object. You can use \"all\" to get all the objects in the scene.~%string object_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSceneObjectList-request)))
  "Returns full string definition for message of type 'GetSceneObjectList-request"
  (cl:format cl:nil "# Name of the target object. You can use \"all\" to get all the objects in the scene.~%string object_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSceneObjectList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSceneObjectList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSceneObjectList-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude GetSceneObjectList-response.msg.html

(cl:defclass <GetSceneObjectList-response> (roslisp-msg-protocol:ros-message)
  ((obj_found
    :reader obj_found
    :initarg :obj_found
    :type cl:boolean
    :initform cl:nil)
   (objects
    :reader objects
    :initarg :objects
    :type gazebo_msgs-msg:ModelStates
    :initform (cl:make-instance 'gazebo_msgs-msg:ModelStates))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetSceneObjectList-response (<GetSceneObjectList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSceneObjectList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSceneObjectList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_percept_assig3-srv:<GetSceneObjectList-response> is deprecated: use world_percept_assig3-srv:GetSceneObjectList-response instead.")))

(cl:ensure-generic-function 'obj_found-val :lambda-list '(m))
(cl:defmethod obj_found-val ((m <GetSceneObjectList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:obj_found-val is deprecated.  Use world_percept_assig3-srv:obj_found instead.")
  (obj_found m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetSceneObjectList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:objects-val is deprecated.  Use world_percept_assig3-srv:objects instead.")
  (objects m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetSceneObjectList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_percept_assig3-srv:message-val is deprecated.  Use world_percept_assig3-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSceneObjectList-response>) ostream)
  "Serializes a message object of type '<GetSceneObjectList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obj_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSceneObjectList-response>) istream)
  "Deserializes a message object of type '<GetSceneObjectList-response>"
    (cl:setf (cl:slot-value msg 'obj_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSceneObjectList-response>)))
  "Returns string type for a service object of type '<GetSceneObjectList-response>"
  "world_percept_assig3/GetSceneObjectListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSceneObjectList-response)))
  "Returns string type for a service object of type 'GetSceneObjectList-response"
  "world_percept_assig3/GetSceneObjectListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSceneObjectList-response>)))
  "Returns md5sum for a message object of type '<GetSceneObjectList-response>"
  "49b647e60541a19da96e1aeac31fdfb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSceneObjectList-response)))
  "Returns md5sum for a message object of type 'GetSceneObjectList-response"
  "49b647e60541a19da96e1aeac31fdfb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSceneObjectList-response>)))
  "Returns full string definition for message of type '<GetSceneObjectList-response>"
  (cl:format cl:nil "# true if the target object was in the list~%bool obj_found~%# Target object, it could be one object or all the objects.~%~%gazebo_msgs/ModelStates objects~%~%# Message in case of error~%string message~%~%~%~%~%~%================================================================================~%MSG: gazebo_msgs/ModelStates~%# broadcast all model states in world frame~%string[] name                 # model names~%geometry_msgs/Pose[] pose     # desired pose in world frame~%geometry_msgs/Twist[] twist   # desired twist in world frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSceneObjectList-response)))
  "Returns full string definition for message of type 'GetSceneObjectList-response"
  (cl:format cl:nil "# true if the target object was in the list~%bool obj_found~%# Target object, it could be one object or all the objects.~%~%gazebo_msgs/ModelStates objects~%~%# Message in case of error~%string message~%~%~%~%~%~%================================================================================~%MSG: gazebo_msgs/ModelStates~%# broadcast all model states in world frame~%string[] name                 # model names~%geometry_msgs/Pose[] pose     # desired pose in world frame~%geometry_msgs/Twist[] twist   # desired twist in world frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSceneObjectList-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSceneObjectList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSceneObjectList-response
    (cl:cons ':obj_found (obj_found msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSceneObjectList)))
  'GetSceneObjectList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSceneObjectList)))
  'GetSceneObjectList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSceneObjectList)))
  "Returns string type for a service object of type '<GetSceneObjectList>"
  "world_percept_assig3/GetSceneObjectList")