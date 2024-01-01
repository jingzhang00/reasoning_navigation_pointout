
(cl:in-package :asdf)

(defsystem "world_percept_assig3-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gazebo_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetSceneObjectList" :depends-on ("_package_GetSceneObjectList"))
    (:file "_package_GetSceneObjectList" :depends-on ("_package"))
    (:file "GoToObject" :depends-on ("_package_GoToObject"))
    (:file "_package_GoToObject" :depends-on ("_package"))
    (:file "LoadKnowledge" :depends-on ("_package_LoadKnowledge"))
    (:file "_package_LoadKnowledge" :depends-on ("_package"))
    (:file "ProcessObject" :depends-on ("_package_ProcessObject"))
    (:file "_package_ProcessObject" :depends-on ("_package"))
    (:file "SendGoal" :depends-on ("_package_SendGoal"))
    (:file "_package_SendGoal" :depends-on ("_package"))
    (:file "SetInitTiagoPose" :depends-on ("_package_SetInitTiagoPose"))
    (:file "_package_SetInitTiagoPose" :depends-on ("_package"))
    (:file "UpdateObjectList" :depends-on ("_package_UpdateObjectList"))
    (:file "_package_UpdateObjectList" :depends-on ("_package"))
  ))