
(cl:in-package :asdf)

(defsystem "ein-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :object_recognition_msgs-msg
)
  :components ((:file "_package")
    (:file "EinState" :depends-on ("_package_EinState"))
    (:file "_package_EinState" :depends-on ("_package"))
    (:file "EinConsole" :depends-on ("_package_EinConsole"))
    (:file "_package_EinConsole" :depends-on ("_package"))
  ))