;; Auto-generated. Do not edit!


(when (boundp 'xihelm_pkg::SurveyCamera)
  (if (not (find-package "XIHELM_PKG"))
    (make-package "XIHELM_PKG"))
  (shadow 'SurveyCamera (find-package "XIHELM_PKG")))
(unless (find-package "XIHELM_PKG::SURVEYCAMERA")
  (make-package "XIHELM_PKG::SURVEYCAMERA"))
(unless (find-package "XIHELM_PKG::SURVEYCAMERAREQUEST")
  (make-package "XIHELM_PKG::SURVEYCAMERAREQUEST"))
(unless (find-package "XIHELM_PKG::SURVEYCAMERARESPONSE")
  (make-package "XIHELM_PKG::SURVEYCAMERARESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass xihelm_pkg::SurveyCameraRequest
  :super ros::object
  :slots (_pos ))

(defmethod xihelm_pkg::SurveyCameraRequest
  (:init
   (&key
    ((:pos __pos) 0.0)
    )
   (send-super :init)
   (setq _pos (float __pos))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float32 _pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass xihelm_pkg::SurveyCameraResponse
  :super ros::object
  :slots (_image ))

(defmethod xihelm_pkg::SurveyCameraResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass xihelm_pkg::SurveyCamera
  :super ros::object
  :slots ())

(setf (get xihelm_pkg::SurveyCamera :md5sum-) "be9d1066f5c2d761478f03b60acd3f19")
(setf (get xihelm_pkg::SurveyCamera :datatype-) "xihelm_pkg/SurveyCamera")
(setf (get xihelm_pkg::SurveyCamera :request) xihelm_pkg::SurveyCameraRequest)
(setf (get xihelm_pkg::SurveyCamera :response) xihelm_pkg::SurveyCameraResponse)

(defmethod xihelm_pkg::SurveyCameraRequest
  (:response () (instance xihelm_pkg::SurveyCameraResponse :init)))

(setf (get xihelm_pkg::SurveyCameraRequest :md5sum-) "be9d1066f5c2d761478f03b60acd3f19")
(setf (get xihelm_pkg::SurveyCameraRequest :datatype-) "xihelm_pkg/SurveyCameraRequest")
(setf (get xihelm_pkg::SurveyCameraRequest :definition-)
      "float32 pos
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get xihelm_pkg::SurveyCameraResponse :md5sum-) "be9d1066f5c2d761478f03b60acd3f19")
(setf (get xihelm_pkg::SurveyCameraResponse :datatype-) "xihelm_pkg/SurveyCameraResponse")
(setf (get xihelm_pkg::SurveyCameraResponse :definition-)
      "float32 pos
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :xihelm_pkg/SurveyCamera "be9d1066f5c2d761478f03b60acd3f19")


