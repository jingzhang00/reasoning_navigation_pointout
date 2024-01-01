;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::GetSceneObjectList)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'GetSceneObjectList (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLIST")
  (make-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLIST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLISTREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLISTREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLISTRESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::GETSCENEOBJECTLISTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GAZEBO_MSGS"))
  (ros::roseus-add-msgs "gazebo_msgs"))


(defclass world_percept_assig3::GetSceneObjectListRequest
  :super ros::object
  :slots (_object_name ))

(defmethod world_percept_assig3::GetSceneObjectListRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_percept_assig3::GetSceneObjectListResponse
  :super ros::object
  :slots (_obj_found _objects _message ))

(defmethod world_percept_assig3::GetSceneObjectListResponse
  (:init
   (&key
    ((:obj_found __obj_found) nil)
    ((:objects __objects) (instance gazebo_msgs::ModelStates :init))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _obj_found __obj_found)
   (setq _objects __objects)
   (setq _message (string __message))
   self)
  (:obj_found
   (&optional (__obj_found :null))
   (if (not (eq __obj_found :null)) (setq _obj_found __obj_found)) _obj_found)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _obj_found
    1
    ;; gazebo_msgs/ModelStates _objects
    (send _objects :serialization-length)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _obj_found
       (if _obj_found (write-byte -1 s) (write-byte 0 s))
     ;; gazebo_msgs/ModelStates _objects
       (send _objects :serialize s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _obj_found
     (setq _obj_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gazebo_msgs/ModelStates _objects
     (send _objects :deserialize buf ptr-) (incf ptr- (send _objects :serialization-length))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_percept_assig3::GetSceneObjectList
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::GetSceneObjectList :md5sum-) "49b647e60541a19da96e1aeac31fdfb8")
(setf (get world_percept_assig3::GetSceneObjectList :datatype-) "world_percept_assig3/GetSceneObjectList")
(setf (get world_percept_assig3::GetSceneObjectList :request) world_percept_assig3::GetSceneObjectListRequest)
(setf (get world_percept_assig3::GetSceneObjectList :response) world_percept_assig3::GetSceneObjectListResponse)

(defmethod world_percept_assig3::GetSceneObjectListRequest
  (:response () (instance world_percept_assig3::GetSceneObjectListResponse :init)))

(setf (get world_percept_assig3::GetSceneObjectListRequest :md5sum-) "49b647e60541a19da96e1aeac31fdfb8")
(setf (get world_percept_assig3::GetSceneObjectListRequest :datatype-) "world_percept_assig3/GetSceneObjectListRequest")
(setf (get world_percept_assig3::GetSceneObjectListRequest :definition-)
      "# Name of the target object. You can use \"all\" to get all the objects in the scene.
string object_name

---
# true if the target object was in the list
bool obj_found
# Target object, it could be one object or all the objects.

gazebo_msgs/ModelStates objects

# Message in case of error
string message





================================================================================
MSG: gazebo_msgs/ModelStates
# broadcast all model states in world frame
string[] name                 # model names
geometry_msgs/Pose[] pose     # desired pose in world frame
geometry_msgs/Twist[] twist   # desired twist in world frame

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get world_percept_assig3::GetSceneObjectListResponse :md5sum-) "49b647e60541a19da96e1aeac31fdfb8")
(setf (get world_percept_assig3::GetSceneObjectListResponse :datatype-) "world_percept_assig3/GetSceneObjectListResponse")
(setf (get world_percept_assig3::GetSceneObjectListResponse :definition-)
      "# Name of the target object. You can use \"all\" to get all the objects in the scene.
string object_name

---
# true if the target object was in the list
bool obj_found
# Target object, it could be one object or all the objects.

gazebo_msgs/ModelStates objects

# Message in case of error
string message





================================================================================
MSG: gazebo_msgs/ModelStates
# broadcast all model states in world frame
string[] name                 # model names
geometry_msgs/Pose[] pose     # desired pose in world frame
geometry_msgs/Twist[] twist   # desired twist in world frame

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :world_percept_assig3/GetSceneObjectList "49b647e60541a19da96e1aeac31fdfb8")


