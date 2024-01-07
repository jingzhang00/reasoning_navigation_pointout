
(cl:in-package :asdf)

(defsystem "rearrange-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gazebo_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetSceneObjectList" :depends-on ("_package_GetSceneObjectList"))
    (:file "_package_GetSceneObjectList" :depends-on ("_package"))
    (:file "SetInitTiagoPose" :depends-on ("_package_SetInitTiagoPose"))
    (:file "_package_SetInitTiagoPose" :depends-on ("_package"))
    (:file "UpdateObjectList" :depends-on ("_package_UpdateObjectList"))
    (:file "_package_UpdateObjectList" :depends-on ("_package"))
  ))