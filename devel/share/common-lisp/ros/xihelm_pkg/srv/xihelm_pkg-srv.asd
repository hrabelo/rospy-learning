
(cl:in-package :asdf)

(defsystem "xihelm_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "OddEvenCheck" :depends-on ("_package_OddEvenCheck"))
    (:file "_package_OddEvenCheck" :depends-on ("_package"))
    (:file "SurveyCamera" :depends-on ("_package_SurveyCamera"))
    (:file "_package_SurveyCamera" :depends-on ("_package"))
  ))