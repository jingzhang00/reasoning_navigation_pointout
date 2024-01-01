;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::GoToObject)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'GoToObject (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECT")
  (make-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECT"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECTREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECTREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECTRESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::GOTOOBJECTRESPONSE"))

(in-package "ROS")





(defclass world_percept_assig3::GoToObjectRequest
  :super ros::object
  :slots (_target_name ))

(defmethod world_percept_assig3::GoToObjectRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:serialization-length
   ()
   (+
    ;; string _target_name
    4 (length _target_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_percept_assig3::GoToObjectResponse
  :super ros::object
  :slots (_linear_velocity _angular_velocity _success ))

(defmethod world_percept_assig3::GoToObjectResponse
  (:init
   (&key
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   (setq _success __success)
   self)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_velocity
    8
    ;; float64 _angular_velocity
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_percept_assig3::GoToObject
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::GoToObject :md5sum-) "b7de194fd0522df85d7a9bdf6a8e6897")
(setf (get world_percept_assig3::GoToObject :datatype-) "world_percept_assig3/GoToObject")
(setf (get world_percept_assig3::GoToObject :request) world_percept_assig3::GoToObjectRequest)
(setf (get world_percept_assig3::GoToObject :response) world_percept_assig3::GoToObjectResponse)

(defmethod world_percept_assig3::GoToObjectRequest
  (:response () (instance world_percept_assig3::GoToObjectResponse :init)))

(setf (get world_percept_assig3::GoToObjectRequest :md5sum-) "b7de194fd0522df85d7a9bdf6a8e6897")
(setf (get world_percept_assig3::GoToObjectRequest :datatype-) "world_percept_assig3/GoToObjectRequest")
(setf (get world_percept_assig3::GoToObjectRequest :definition-)
      "# Request part of the service
# Name of the object to go to
string target_name

---
# Response part of the service
# Calculated linear velocity to move towards the object
float64 linear_velocity

float64 angular_velocity


bool success



")

(setf (get world_percept_assig3::GoToObjectResponse :md5sum-) "b7de194fd0522df85d7a9bdf6a8e6897")
(setf (get world_percept_assig3::GoToObjectResponse :datatype-) "world_percept_assig3/GoToObjectResponse")
(setf (get world_percept_assig3::GoToObjectResponse :definition-)
      "# Request part of the service
# Name of the object to go to
string target_name

---
# Response part of the service
# Calculated linear velocity to move towards the object
float64 linear_velocity

float64 angular_velocity


bool success



")



(provide :world_percept_assig3/GoToObject "b7de194fd0522df85d7a9bdf6a8e6897")


