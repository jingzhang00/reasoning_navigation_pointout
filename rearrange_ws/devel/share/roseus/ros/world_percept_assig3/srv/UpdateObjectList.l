;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::UpdateObjectList)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'UpdateObjectList (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLIST")
  (make-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLIST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLISTREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLISTREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLISTRESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::UPDATEOBJECTLISTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass world_percept_assig3::UpdateObjectListRequest
  :super ros::object
  :slots (_object_pose _object_name ))

(defmethod world_percept_assig3::UpdateObjectListRequest
  (:init
   (&key
    ((:object_pose __object_pose) (instance geometry_msgs::Pose :init))
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_pose __object_pose)
   (setq _object_name (string __object_name))
   self)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _object_pose
    (send _object_pose :serialization-length)
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _object_pose
       (send _object_pose :serialize s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_percept_assig3::UpdateObjectListResponse
  :super ros::object
  :slots (_confirmation ))

(defmethod world_percept_assig3::UpdateObjectListResponse
  (:init
   (&key
    ((:confirmation __confirmation) nil)
    )
   (send-super :init)
   (setq _confirmation __confirmation)
   self)
  (:confirmation
   (&optional (__confirmation :null))
   (if (not (eq __confirmation :null)) (setq _confirmation __confirmation)) _confirmation)
  (:serialization-length
   ()
   (+
    ;; bool _confirmation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _confirmation
       (if _confirmation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _confirmation
     (setq _confirmation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_percept_assig3::UpdateObjectList
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::UpdateObjectList :md5sum-) "07fb332925eec5f4d2f3c7b2da4de91d")
(setf (get world_percept_assig3::UpdateObjectList :datatype-) "world_percept_assig3/UpdateObjectList")
(setf (get world_percept_assig3::UpdateObjectList :request) world_percept_assig3::UpdateObjectListRequest)
(setf (get world_percept_assig3::UpdateObjectList :response) world_percept_assig3::UpdateObjectListResponse)

(defmethod world_percept_assig3::UpdateObjectListRequest
  (:response () (instance world_percept_assig3::UpdateObjectListResponse :init)))

(setf (get world_percept_assig3::UpdateObjectListRequest :md5sum-) "07fb332925eec5f4d2f3c7b2da4de91d")
(setf (get world_percept_assig3::UpdateObjectListRequest :datatype-) "world_percept_assig3/UpdateObjectListRequest")
(setf (get world_percept_assig3::UpdateObjectListRequest :definition-)
      "# New Object for the list
geometry_msgs/Pose object_pose
string object_name


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool confirmation
")

(setf (get world_percept_assig3::UpdateObjectListResponse :md5sum-) "07fb332925eec5f4d2f3c7b2da4de91d")
(setf (get world_percept_assig3::UpdateObjectListResponse :datatype-) "world_percept_assig3/UpdateObjectListResponse")
(setf (get world_percept_assig3::UpdateObjectListResponse :definition-)
      "# New Object for the list
geometry_msgs/Pose object_pose
string object_name


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool confirmation
")



(provide :world_percept_assig3/UpdateObjectList "07fb332925eec5f4d2f3c7b2da4de91d")


