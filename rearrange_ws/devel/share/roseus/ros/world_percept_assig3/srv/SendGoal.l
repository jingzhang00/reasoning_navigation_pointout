;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::SendGoal)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'SendGoal (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::SENDGOAL")
  (make-package "WORLD_PERCEPT_ASSIG3::SENDGOAL"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::SENDGOALREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::SENDGOALREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::SENDGOALRESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::SENDGOALRESPONSE"))

(in-package "ROS")





(defclass world_percept_assig3::SendGoalRequest
  :super ros::object
  :slots (_target_name _target_x _target_y _target_orientation_z _target_orientation_w ))

(defmethod world_percept_assig3::SendGoalRequest
  (:init
   (&key
    ((:target_name __target_name) "")
    ((:target_x __target_x) 0.0)
    ((:target_y __target_y) 0.0)
    ((:target_orientation_z __target_orientation_z) 0.0)
    ((:target_orientation_w __target_orientation_w) 0.0)
    )
   (send-super :init)
   (setq _target_name (string __target_name))
   (setq _target_x (float __target_x))
   (setq _target_y (float __target_y))
   (setq _target_orientation_z (float __target_orientation_z))
   (setq _target_orientation_w (float __target_orientation_w))
   self)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:target_x
   (&optional __target_x)
   (if __target_x (setq _target_x __target_x)) _target_x)
  (:target_y
   (&optional __target_y)
   (if __target_y (setq _target_y __target_y)) _target_y)
  (:target_orientation_z
   (&optional __target_orientation_z)
   (if __target_orientation_z (setq _target_orientation_z __target_orientation_z)) _target_orientation_z)
  (:target_orientation_w
   (&optional __target_orientation_w)
   (if __target_orientation_w (setq _target_orientation_w __target_orientation_w)) _target_orientation_w)
  (:serialization-length
   ()
   (+
    ;; string _target_name
    4 (length _target_name)
    ;; float64 _target_x
    8
    ;; float64 _target_y
    8
    ;; float64 _target_orientation_z
    8
    ;; float64 _target_orientation_w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; float64 _target_x
       (sys::poke _target_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_y
       (sys::poke _target_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_orientation_z
       (sys::poke _target_orientation_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_orientation_w
       (sys::poke _target_orientation_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _target_x
     (setq _target_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_y
     (setq _target_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_orientation_z
     (setq _target_orientation_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_orientation_w
     (setq _target_orientation_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass world_percept_assig3::SendGoalResponse
  :super ros::object
  :slots (_success ))

(defmethod world_percept_assig3::SendGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_percept_assig3::SendGoal
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::SendGoal :md5sum-) "c6c193b83d729c060fe663d1f1fec285")
(setf (get world_percept_assig3::SendGoal :datatype-) "world_percept_assig3/SendGoal")
(setf (get world_percept_assig3::SendGoal :request) world_percept_assig3::SendGoalRequest)
(setf (get world_percept_assig3::SendGoal :response) world_percept_assig3::SendGoalResponse)

(defmethod world_percept_assig3::SendGoalRequest
  (:response () (instance world_percept_assig3::SendGoalResponse :init)))

(setf (get world_percept_assig3::SendGoalRequest :md5sum-) "c6c193b83d729c060fe663d1f1fec285")
(setf (get world_percept_assig3::SendGoalRequest :datatype-) "world_percept_assig3/SendGoalRequest")
(setf (get world_percept_assig3::SendGoalRequest :definition-)
      "# SendGoal.srv
string target_name
float64 target_x
float64 target_y
float64 target_orientation_z
float64 target_orientation_w
---
bool success

")

(setf (get world_percept_assig3::SendGoalResponse :md5sum-) "c6c193b83d729c060fe663d1f1fec285")
(setf (get world_percept_assig3::SendGoalResponse :datatype-) "world_percept_assig3/SendGoalResponse")
(setf (get world_percept_assig3::SendGoalResponse :definition-)
      "# SendGoal.srv
string target_name
float64 target_x
float64 target_y
float64 target_orientation_z
float64 target_orientation_w
---
bool success

")



(provide :world_percept_assig3/SendGoal "c6c193b83d729c060fe663d1f1fec285")


