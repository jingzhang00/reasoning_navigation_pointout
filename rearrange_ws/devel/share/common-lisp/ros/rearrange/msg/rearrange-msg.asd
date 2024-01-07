
(cl:in-package :asdf)

(defsystem "rearrange-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NavigateDrinkAction" :depends-on ("_package_NavigateDrinkAction"))
    (:file "_package_NavigateDrinkAction" :depends-on ("_package"))
    (:file "NavigateDrinkActionFeedback" :depends-on ("_package_NavigateDrinkActionFeedback"))
    (:file "_package_NavigateDrinkActionFeedback" :depends-on ("_package"))
    (:file "NavigateDrinkActionGoal" :depends-on ("_package_NavigateDrinkActionGoal"))
    (:file "_package_NavigateDrinkActionGoal" :depends-on ("_package"))
    (:file "NavigateDrinkActionResult" :depends-on ("_package_NavigateDrinkActionResult"))
    (:file "_package_NavigateDrinkActionResult" :depends-on ("_package"))
    (:file "NavigateDrinkFeedback" :depends-on ("_package_NavigateDrinkFeedback"))
    (:file "_package_NavigateDrinkFeedback" :depends-on ("_package"))
    (:file "NavigateDrinkGoal" :depends-on ("_package_NavigateDrinkGoal"))
    (:file "_package_NavigateDrinkGoal" :depends-on ("_package"))
    (:file "NavigateDrinkResult" :depends-on ("_package_NavigateDrinkResult"))
    (:file "_package_NavigateDrinkResult" :depends-on ("_package"))
  ))