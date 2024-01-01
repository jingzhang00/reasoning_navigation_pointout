;; Auto-generated. Do not edit!


(when (boundp 'world_percept_assig3::LoadKnowledge)
  (if (not (find-package "WORLD_PERCEPT_ASSIG3"))
    (make-package "WORLD_PERCEPT_ASSIG3"))
  (shadow 'LoadKnowledge (find-package "WORLD_PERCEPT_ASSIG3")))
(unless (find-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGE")
  (make-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGE"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGEREQUEST")
  (make-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGEREQUEST"))
(unless (find-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGERESPONSE")
  (make-package "WORLD_PERCEPT_ASSIG3::LOADKNOWLEDGERESPONSE"))

(in-package "ROS")





(defclass world_percept_assig3::LoadKnowledgeRequest
  :super ros::object
  :slots (_start ))

(defmethod world_percept_assig3::LoadKnowledgeRequest
  (:init
   (&key
    ((:start __start) 0)
    )
   (send-super :init)
   (setq _start (round __start))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; int64 _start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _start
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start) (= (length (_start . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start . bv) 0) 0) s)
              (write-long (ash (elt (_start . bv) 1) -1) s))
             ((and (class _start) (= (length (_start . bv)) 1)) ;; big1
              (write-long (elt (_start . bv) 0) s)
              (write-long (if (>= _start 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start s)(write-long (if (>= _start 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _start
#+(or :alpha :irix6 :x86_64)
      (setf _start (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass world_percept_assig3::LoadKnowledgeResponse
  :super ros::object
  :slots (_confirm ))

(defmethod world_percept_assig3::LoadKnowledgeResponse
  (:init
   (&key
    ((:confirm __confirm) nil)
    )
   (send-super :init)
   (setq _confirm __confirm)
   self)
  (:confirm
   (&optional (__confirm :null))
   (if (not (eq __confirm :null)) (setq _confirm __confirm)) _confirm)
  (:serialization-length
   ()
   (+
    ;; bool _confirm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _confirm
       (if _confirm (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _confirm
     (setq _confirm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass world_percept_assig3::LoadKnowledge
  :super ros::object
  :slots ())

(setf (get world_percept_assig3::LoadKnowledge :md5sum-) "9d9359c2e08422f16683a8ebec668cb6")
(setf (get world_percept_assig3::LoadKnowledge :datatype-) "world_percept_assig3/LoadKnowledge")
(setf (get world_percept_assig3::LoadKnowledge :request) world_percept_assig3::LoadKnowledgeRequest)
(setf (get world_percept_assig3::LoadKnowledge :response) world_percept_assig3::LoadKnowledgeResponse)

(defmethod world_percept_assig3::LoadKnowledgeRequest
  (:response () (instance world_percept_assig3::LoadKnowledgeResponse :init)))

(setf (get world_percept_assig3::LoadKnowledgeRequest :md5sum-) "9d9359c2e08422f16683a8ebec668cb6")
(setf (get world_percept_assig3::LoadKnowledgeRequest :datatype-) "world_percept_assig3/LoadKnowledgeRequest")
(setf (get world_percept_assig3::LoadKnowledgeRequest :definition-)
      "# Request is an integer called “start”
int64 start
---
#  Response is a boolean called “confirm”
bool confirm
")

(setf (get world_percept_assig3::LoadKnowledgeResponse :md5sum-) "9d9359c2e08422f16683a8ebec668cb6")
(setf (get world_percept_assig3::LoadKnowledgeResponse :datatype-) "world_percept_assig3/LoadKnowledgeResponse")
(setf (get world_percept_assig3::LoadKnowledgeResponse :definition-)
      "# Request is an integer called “start”
int64 start
---
#  Response is a boolean called “confirm”
bool confirm
")



(provide :world_percept_assig3/LoadKnowledge "9d9359c2e08422f16683a8ebec668cb6")


