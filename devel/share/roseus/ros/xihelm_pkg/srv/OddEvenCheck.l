;; Auto-generated. Do not edit!


(when (boundp 'xihelm_pkg::OddEvenCheck)
  (if (not (find-package "XIHELM_PKG"))
    (make-package "XIHELM_PKG"))
  (shadow 'OddEvenCheck (find-package "XIHELM_PKG")))
(unless (find-package "XIHELM_PKG::ODDEVENCHECK")
  (make-package "XIHELM_PKG::ODDEVENCHECK"))
(unless (find-package "XIHELM_PKG::ODDEVENCHECKREQUEST")
  (make-package "XIHELM_PKG::ODDEVENCHECKREQUEST"))
(unless (find-package "XIHELM_PKG::ODDEVENCHECKRESPONSE")
  (make-package "XIHELM_PKG::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass xihelm_pkg::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod xihelm_pkg::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass xihelm_pkg::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod xihelm_pkg::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xihelm_pkg::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get xihelm_pkg::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get xihelm_pkg::OddEvenCheck :datatype-) "xihelm_pkg/OddEvenCheck")
(setf (get xihelm_pkg::OddEvenCheck :request) xihelm_pkg::OddEvenCheckRequest)
(setf (get xihelm_pkg::OddEvenCheck :response) xihelm_pkg::OddEvenCheckResponse)

(defmethod xihelm_pkg::OddEvenCheckRequest
  (:response () (instance xihelm_pkg::OddEvenCheckResponse :init)))

(setf (get xihelm_pkg::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get xihelm_pkg::OddEvenCheckRequest :datatype-) "xihelm_pkg/OddEvenCheckRequest")
(setf (get xihelm_pkg::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get xihelm_pkg::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get xihelm_pkg::OddEvenCheckResponse :datatype-) "xihelm_pkg/OddEvenCheckResponse")
(setf (get xihelm_pkg::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :xihelm_pkg/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


