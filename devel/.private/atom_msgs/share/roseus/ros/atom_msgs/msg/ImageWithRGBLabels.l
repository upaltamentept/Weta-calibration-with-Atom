;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::ImageWithRGBLabels)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'ImageWithRGBLabels (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::IMAGEWITHRGBLABELS")
  (make-package "ATOM_MSGS::IMAGEWITHRGBLABELS"))

(in-package "ROS")
;;//! \htmlinclude ImageWithRGBLabels.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atom_msgs::ImageWithRGBLabels
  :super ros::object
  :slots (_header _image _patterns ))

(defmethod atom_msgs::ImageWithRGBLabels
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:patterns __patterns) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _image __image)
   (setq _patterns __patterns)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:patterns
   (&rest __patterns)
   (if (keywordp (car __patterns))
       (send* _patterns __patterns)
     (progn
       (if __patterns (setq _patterns (car __patterns)))
       _patterns)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; atom_msgs/RGBLabels[] _patterns
    (apply #'+ (send-all _patterns :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; atom_msgs/RGBLabels[] _patterns
     (write-long (length _patterns) s)
     (dolist (elem _patterns)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; atom_msgs/RGBLabels[] _patterns
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _patterns (let (r) (dotimes (i n) (push (instance atom_msgs::RGBLabels :init) r)) r))
     (dolist (elem- _patterns)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get atom_msgs::ImageWithRGBLabels :md5sum-) "e18c48e51f3f491f008a5d4fdf0bffab")
(setf (get atom_msgs::ImageWithRGBLabels :datatype-) "atom_msgs/ImageWithRGBLabels")
(setf (get atom_msgs::ImageWithRGBLabels :definition-)
      "Header header
sensor_msgs/Image image
RGBLabels[] patterns

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
MSG: atom_msgs/RGBLabels
string pattern_name
bool detected
Detection2D[] idxs

================================================================================
MSG: atom_msgs/Detection2D
float32 x
float32 y
uint32 id


")



(provide :atom_msgs/ImageWithRGBLabels "e18c48e51f3f491f008a5d4fdf0bffab")


