
(cl:in-package :asdf)

(defsystem "service_basic-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "service1" :depends-on ("_package_service1"))
    (:file "_package_service1" :depends-on ("_package"))
  ))