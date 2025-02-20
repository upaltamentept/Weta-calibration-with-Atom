; Auto-generated. Do not edit!


(cl:in-package atom_msgs-msg)


;//! \htmlinclude DepthImageWithDepthLabels.msg.html

(cl:defclass <DepthImageWithDepthLabels> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (patterns
    :reader patterns
    :initarg :patterns
    :type (cl:vector atom_msgs-msg:DepthLabels)
   :initform (cl:make-array 0 :element-type 'atom_msgs-msg:DepthLabels :initial-element (cl:make-instance 'atom_msgs-msg:DepthLabels))))
)

(cl:defclass DepthImageWithDepthLabels (<DepthImageWithDepthLabels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DepthImageWithDepthLabels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DepthImageWithDepthLabels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-msg:<DepthImageWithDepthLabels> is deprecated: use atom_msgs-msg:DepthImageWithDepthLabels instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DepthImageWithDepthLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:header-val is deprecated.  Use atom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <DepthImageWithDepthLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:image-val is deprecated.  Use atom_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'patterns-val :lambda-list '(m))
(cl:defmethod patterns-val ((m <DepthImageWithDepthLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:patterns-val is deprecated.  Use atom_msgs-msg:patterns instead.")
  (patterns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DepthImageWithDepthLabels>) ostream)
  "Serializes a message object of type '<DepthImageWithDepthLabels>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'patterns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'patterns))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DepthImageWithDepthLabels>) istream)
  "Deserializes a message object of type '<DepthImageWithDepthLabels>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'patterns) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'patterns)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'atom_msgs-msg:DepthLabels))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DepthImageWithDepthLabels>)))
  "Returns string type for a message object of type '<DepthImageWithDepthLabels>"
  "atom_msgs/DepthImageWithDepthLabels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DepthImageWithDepthLabels)))
  "Returns string type for a message object of type 'DepthImageWithDepthLabels"
  "atom_msgs/DepthImageWithDepthLabels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DepthImageWithDepthLabels>)))
  "Returns md5sum for a message object of type '<DepthImageWithDepthLabels>"
  "d786f9566bc8e99f050450471f7eb588")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DepthImageWithDepthLabels)))
  "Returns md5sum for a message object of type 'DepthImageWithDepthLabels"
  "d786f9566bc8e99f050450471f7eb588")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DepthImageWithDepthLabels>)))
  "Returns full string definition for message of type '<DepthImageWithDepthLabels>"
  (cl:format cl:nil "Header header~%sensor_msgs/Image image~%DepthLabels[] patterns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: atom_msgs/DepthLabels~%string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DepthImageWithDepthLabels)))
  "Returns full string definition for message of type 'DepthImageWithDepthLabels"
  (cl:format cl:nil "Header header~%sensor_msgs/Image image~%DepthLabels[] patterns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: atom_msgs/DepthLabels~%string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DepthImageWithDepthLabels>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'patterns) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DepthImageWithDepthLabels>))
  "Converts a ROS message object to a list"
  (cl:list 'DepthImageWithDepthLabels
    (cl:cons ':header (header msg))
    (cl:cons ':image (image msg))
    (cl:cons ':patterns (patterns msg))
))
