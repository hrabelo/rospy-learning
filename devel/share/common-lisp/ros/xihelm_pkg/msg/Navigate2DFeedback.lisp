; Auto-generated. Do not edit!


(cl:in-package xihelm_pkg-msg)


;//! \htmlinclude Navigate2DFeedback.msg.html

(cl:defclass <Navigate2DFeedback> (roslisp-msg-protocol:ros-message)
  ((distance_remaining
    :reader distance_remaining
    :initarg :distance_remaining
    :type cl:float
    :initform 0.0))
)

(cl:defclass Navigate2DFeedback (<Navigate2DFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigate2DFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigate2DFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xihelm_pkg-msg:<Navigate2DFeedback> is deprecated: use xihelm_pkg-msg:Navigate2DFeedback instead.")))

(cl:ensure-generic-function 'distance_remaining-val :lambda-list '(m))
(cl:defmethod distance_remaining-val ((m <Navigate2DFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xihelm_pkg-msg:distance_remaining-val is deprecated.  Use xihelm_pkg-msg:distance_remaining instead.")
  (distance_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigate2DFeedback>) ostream)
  "Serializes a message object of type '<Navigate2DFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_remaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigate2DFeedback>) istream)
  "Deserializes a message object of type '<Navigate2DFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_remaining) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigate2DFeedback>)))
  "Returns string type for a message object of type '<Navigate2DFeedback>"
  "xihelm_pkg/Navigate2DFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigate2DFeedback)))
  "Returns string type for a message object of type 'Navigate2DFeedback"
  "xihelm_pkg/Navigate2DFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigate2DFeedback>)))
  "Returns md5sum for a message object of type '<Navigate2DFeedback>"
  "64b64afc81806ad83ed607add12142ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigate2DFeedback)))
  "Returns md5sum for a message object of type 'Navigate2DFeedback"
  "64b64afc81806ad83ed607add12142ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigate2DFeedback>)))
  "Returns full string definition for message of type '<Navigate2DFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float32 distance_remaining~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigate2DFeedback)))
  "Returns full string definition for message of type 'Navigate2DFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float32 distance_remaining~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigate2DFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigate2DFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigate2DFeedback
    (cl:cons ':distance_remaining (distance_remaining msg))
))
