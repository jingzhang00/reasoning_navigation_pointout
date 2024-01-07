; Auto-generated. Do not edit!


(cl:in-package rearrange-srv)


;//! \htmlinclude SetInitTiagoPose-request.msg.html

(cl:defclass <SetInitTiagoPose-request> (roslisp-msg-protocol:ros-message)
  ((tiago_pose
    :reader tiago_pose
    :initarg :tiago_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetInitTiagoPose-request (<SetInitTiagoPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitTiagoPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitTiagoPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rearrange-srv:<SetInitTiagoPose-request> is deprecated: use rearrange-srv:SetInitTiagoPose-request instead.")))

(cl:ensure-generic-function 'tiago_pose-val :lambda-list '(m))
(cl:defmethod tiago_pose-val ((m <SetInitTiagoPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-srv:tiago_pose-val is deprecated.  Use rearrange-srv:tiago_pose instead.")
  (tiago_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitTiagoPose-request>) ostream)
  "Serializes a message object of type '<SetInitTiagoPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tiago_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitTiagoPose-request>) istream)
  "Deserializes a message object of type '<SetInitTiagoPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tiago_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitTiagoPose-request>)))
  "Returns string type for a service object of type '<SetInitTiagoPose-request>"
  "rearrange/SetInitTiagoPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitTiagoPose-request)))
  "Returns string type for a service object of type 'SetInitTiagoPose-request"
  "rearrange/SetInitTiagoPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitTiagoPose-request>)))
  "Returns md5sum for a message object of type '<SetInitTiagoPose-request>"
  "506d0acd0d4a87fa64b5270d2249c2f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitTiagoPose-request)))
  "Returns md5sum for a message object of type 'SetInitTiagoPose-request"
  "506d0acd0d4a87fa64b5270d2249c2f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitTiagoPose-request>)))
  "Returns full string definition for message of type '<SetInitTiagoPose-request>"
  (cl:format cl:nil "# Initial Tiago Pose wrt gazebo world (ground_plane)~%geometry_msgs/Pose tiago_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitTiagoPose-request)))
  "Returns full string definition for message of type 'SetInitTiagoPose-request"
  (cl:format cl:nil "# Initial Tiago Pose wrt gazebo world (ground_plane)~%geometry_msgs/Pose tiago_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitTiagoPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tiago_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitTiagoPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitTiagoPose-request
    (cl:cons ':tiago_pose (tiago_pose msg))
))
;//! \htmlinclude SetInitTiagoPose-response.msg.html

(cl:defclass <SetInitTiagoPose-response> (roslisp-msg-protocol:ros-message)
  ((confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetInitTiagoPose-response (<SetInitTiagoPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitTiagoPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitTiagoPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rearrange-srv:<SetInitTiagoPose-response> is deprecated: use rearrange-srv:SetInitTiagoPose-response instead.")))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <SetInitTiagoPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rearrange-srv:confirmation-val is deprecated.  Use rearrange-srv:confirmation instead.")
  (confirmation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitTiagoPose-response>) ostream)
  "Serializes a message object of type '<SetInitTiagoPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitTiagoPose-response>) istream)
  "Deserializes a message object of type '<SetInitTiagoPose-response>"
    (cl:setf (cl:slot-value msg 'confirmation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitTiagoPose-response>)))
  "Returns string type for a service object of type '<SetInitTiagoPose-response>"
  "rearrange/SetInitTiagoPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitTiagoPose-response)))
  "Returns string type for a service object of type 'SetInitTiagoPose-response"
  "rearrange/SetInitTiagoPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitTiagoPose-response>)))
  "Returns md5sum for a message object of type '<SetInitTiagoPose-response>"
  "506d0acd0d4a87fa64b5270d2249c2f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitTiagoPose-response)))
  "Returns md5sum for a message object of type 'SetInitTiagoPose-response"
  "506d0acd0d4a87fa64b5270d2249c2f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitTiagoPose-response>)))
  "Returns full string definition for message of type '<SetInitTiagoPose-response>"
  (cl:format cl:nil "bool confirmation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitTiagoPose-response)))
  "Returns full string definition for message of type 'SetInitTiagoPose-response"
  (cl:format cl:nil "bool confirmation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitTiagoPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitTiagoPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitTiagoPose-response
    (cl:cons ':confirmation (confirmation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInitTiagoPose)))
  'SetInitTiagoPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInitTiagoPose)))
  'SetInitTiagoPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitTiagoPose)))
  "Returns string type for a service object of type '<SetInitTiagoPose>"
  "rearrange/SetInitTiagoPose")