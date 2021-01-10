; Auto-generated. Do not edit!


(cl:in-package xihelm_pkg-srv)


;//! \htmlinclude SurveyCamera-request.msg.html

(cl:defclass <SurveyCamera-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass SurveyCamera-request (<SurveyCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurveyCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurveyCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xihelm_pkg-srv:<SurveyCamera-request> is deprecated: use xihelm_pkg-srv:SurveyCamera-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <SurveyCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xihelm_pkg-srv:pos-val is deprecated.  Use xihelm_pkg-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurveyCamera-request>) ostream)
  "Serializes a message object of type '<SurveyCamera-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurveyCamera-request>) istream)
  "Deserializes a message object of type '<SurveyCamera-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurveyCamera-request>)))
  "Returns string type for a service object of type '<SurveyCamera-request>"
  "xihelm_pkg/SurveyCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurveyCamera-request)))
  "Returns string type for a service object of type 'SurveyCamera-request"
  "xihelm_pkg/SurveyCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurveyCamera-request>)))
  "Returns md5sum for a message object of type '<SurveyCamera-request>"
  "be9d1066f5c2d761478f03b60acd3f19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurveyCamera-request)))
  "Returns md5sum for a message object of type 'SurveyCamera-request"
  "be9d1066f5c2d761478f03b60acd3f19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurveyCamera-request>)))
  "Returns full string definition for message of type '<SurveyCamera-request>"
  (cl:format cl:nil "float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurveyCamera-request)))
  "Returns full string definition for message of type 'SurveyCamera-request"
  (cl:format cl:nil "float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurveyCamera-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurveyCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SurveyCamera-request
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude SurveyCamera-response.msg.html

(cl:defclass <SurveyCamera-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass SurveyCamera-response (<SurveyCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurveyCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurveyCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xihelm_pkg-srv:<SurveyCamera-response> is deprecated: use xihelm_pkg-srv:SurveyCamera-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <SurveyCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xihelm_pkg-srv:image-val is deprecated.  Use xihelm_pkg-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurveyCamera-response>) ostream)
  "Serializes a message object of type '<SurveyCamera-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurveyCamera-response>) istream)
  "Deserializes a message object of type '<SurveyCamera-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurveyCamera-response>)))
  "Returns string type for a service object of type '<SurveyCamera-response>"
  "xihelm_pkg/SurveyCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurveyCamera-response)))
  "Returns string type for a service object of type 'SurveyCamera-response"
  "xihelm_pkg/SurveyCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurveyCamera-response>)))
  "Returns md5sum for a message object of type '<SurveyCamera-response>"
  "be9d1066f5c2d761478f03b60acd3f19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurveyCamera-response)))
  "Returns md5sum for a message object of type 'SurveyCamera-response"
  "be9d1066f5c2d761478f03b60acd3f19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurveyCamera-response>)))
  "Returns full string definition for message of type '<SurveyCamera-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurveyCamera-response)))
  "Returns full string definition for message of type 'SurveyCamera-response"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurveyCamera-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurveyCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SurveyCamera-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SurveyCamera)))
  'SurveyCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SurveyCamera)))
  'SurveyCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurveyCamera)))
  "Returns string type for a service object of type '<SurveyCamera>"
  "xihelm_pkg/SurveyCamera")