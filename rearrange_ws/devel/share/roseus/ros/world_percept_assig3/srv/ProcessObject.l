;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::ProcessObject)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'ProcessObject (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECT")
  (make-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECT"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECTREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECTREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECTRESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::PROCESSOBJECTRESPONSE"))

(in-package "ROS")





(defclass world_percept_assig3::ProcessObjectRequest
  :super ros::object
  :slots (_object_name ))

(defmethod world_percept_assig3::ProcessObjectRequest
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

(defclass world_percept_assig3::ProcessObjectResponse
  :super ros::object
  :slots (_success _message ))

(defmethod world_percept_assig3::ProcessObjectResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass world_percept_assig3::ProcessObject
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::ProcessObject :md5sum-) "32681a2870f0325b7d011635fd43aac7")
(setf (get world_percept_assig3::ProcessObject :datatype-) "world_percept_assig3/ProcessObject")
(setf (get world_percept_assig3::ProcessObject :request) world_percept_assig3::ProcessObjectRequest)
(setf (get world_percept_assig3::ProcessObject :response) world_percept_assig3::ProcessObjectResponse)

(defmethod world_percept_assig3::ProcessObjectRequest
  (:response () (instance world_percept_assig3::ProcessObjectResponse :init)))

(setf (get world_percept_assig3::ProcessObjectRequest :md5sum-) "32681a2870f0325b7d011635fd43aac7")
(setf (get world_percept_assig3::ProcessObjectRequest :datatype-) "world_percept_assig3/ProcessObjectRequest")
(setf (get world_percept_assig3::ProcessObjectRequest :definition-)
      "# ProcessObject.srv
string object_name
---
bool success
string message

")

(setf (get world_percept_assig3::ProcessObjectResponse :md5sum-) "32681a2870f0325b7d011635fd43aac7")
(setf (get world_percept_assig3::ProcessObjectResponse :datatype-) "world_percept_assig3/ProcessObjectResponse")
(setf (get world_percept_assig3::ProcessObjectResponse :definition-)
      "# ProcessObject.srv
string object_name
---
bool success
string message

")



(provide :world_percept_assig3/ProcessObject "32681a2870f0325b7d011635fd43aac7")


