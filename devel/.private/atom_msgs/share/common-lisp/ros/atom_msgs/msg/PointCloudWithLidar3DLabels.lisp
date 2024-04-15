; Auto-generated. Do not edit!


(cl:in-package atom_msgs-msg)


;//! \htmlinclude PointCloudWithLidar3DLabels.msg.html

(cl:defclass <PointCloudWithLidar3DLabels> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (patterns
    :reader patterns
    :initarg :patterns
    :type (cl:vector atom_msgs-msg:Lidar3DLabels)
   :initform (cl:make-array 0 :element-type 'atom_msgs-msg:Lidar3DLabels :initial-element (cl:make-instance 'atom_msgs-msg:Lidar3DLabels))))
)

(cl:defclass PointCloudWithLidar3DLabels (<PointCloudWithLidar3DLabels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloudWithLidar3DLabels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloudWithLidar3DLabels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-msg:<PointCloudWithLidar3DLabels> is deprecated: use atom_msgs-msg:PointCloudWithLidar3DLabels instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointCloudWithLidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:header-val is deprecated.  Use atom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <PointCloudWithLidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:point_cloud-val is deprecated.  Use atom_msgs-msg:point_cloud instead.")
  (point_cloud m))

(cl:ensure-generic-function 'patterns-val :lambda-list '(m))
(cl:defmethod patterns-val ((m <PointCloudWithLidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:patterns-val is deprecated.  Use atom_msgs-msg:patterns instead.")
  (patterns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloudWithLidar3DLabels>) ostream)
  "Serializes a message object of type '<PointCloudWithLidar3DLabels>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'patterns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'patterns))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloudWithLidar3DLabels>) istream)
  "Deserializes a message object of type '<PointCloudWithLidar3DLabels>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'patterns) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'patterns)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'atom_msgs-msg:Lidar3DLabels))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloudWithLidar3DLabels>)))
  "Returns string type for a message object of type '<PointCloudWithLidar3DLabels>"
  "atom_msgs/PointCloudWithLidar3DLabels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloudWithLidar3DLabels)))
  "Returns string type for a message object of type 'PointCloudWithLidar3DLabels"
  "atom_msgs/PointCloudWithLidar3DLabels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloudWithLidar3DLabels>)))
  "Returns md5sum for a message object of type '<PointCloudWithLidar3DLabels>"
  "8718797d8c5c69f369339615842a11b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloudWithLidar3DLabels)))
  "Returns md5sum for a message object of type 'PointCloudWithLidar3DLabels"
  "8718797d8c5c69f369339615842a11b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloudWithLidar3DLabels>)))
  "Returns full string definition for message of type '<PointCloudWithLidar3DLabels>"
  (cl:format cl:nil "Header header~%sensor_msgs/PointCloud2 point_cloud~%Lidar3DLabels[] patterns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: atom_msgs/Lidar3DLabels~%string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloudWithLidar3DLabels)))
  "Returns full string definition for message of type 'PointCloudWithLidar3DLabels"
  (cl:format cl:nil "Header header~%sensor_msgs/PointCloud2 point_cloud~%Lidar3DLabels[] patterns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: atom_msgs/Lidar3DLabels~%string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloudWithLidar3DLabels>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'patterns) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloudWithLidar3DLabels>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloudWithLidar3DLabels
    (cl:cons ':header (header msg))
    (cl:cons ':point_cloud (point_cloud msg))
    (cl:cons ':patterns (patterns msg))
))
