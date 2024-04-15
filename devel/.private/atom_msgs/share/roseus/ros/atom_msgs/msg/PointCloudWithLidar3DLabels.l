;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::PointCloudWithLidar3DLabels)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'PointCloudWithLidar3DLabels (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::POINTCLOUDWITHLIDAR3DLABELS")
  (make-package "ATOM_MSGS::POINTCLOUDWITHLIDAR3DLABELS"))

(in-package "ROS")
;;//! \htmlinclude PointCloudWithLidar3DLabels.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass atom_msgs::PointCloudWithLidar3DLabels
  :super ros::object
  :slots (_header _point_cloud _patterns ))

(defmethod atom_msgs::PointCloudWithLidar3DLabels
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_cloud __point_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:patterns __patterns) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_cloud __point_cloud)
   (setq _patterns __patterns)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_cloud
   (&rest __point_cloud)
   (if (keywordp (car __point_cloud))
       (send* _point_cloud __point_cloud)
     (progn
       (if __point_cloud (setq _point_cloud (car __point_cloud)))
       _point_cloud)))
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
    ;; sensor_msgs/PointCloud2 _point_cloud
    (send _point_cloud :serialization-length)
    ;; atom_msgs/Lidar3DLabels[] _patterns
    (apply #'+ (send-all _patterns :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/PointCloud2 _point_cloud
       (send _point_cloud :serialize s)
     ;; atom_msgs/Lidar3DLabels[] _patterns
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
   ;; sensor_msgs/PointCloud2 _point_cloud
     (send _point_cloud :deserialize buf ptr-) (incf ptr- (send _point_cloud :serialization-length))
   ;; atom_msgs/Lidar3DLabels[] _patterns
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _patterns (let (r) (dotimes (i n) (push (instance atom_msgs::Lidar3DLabels :init) r)) r))
     (dolist (elem- _patterns)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get atom_msgs::PointCloudWithLidar3DLabels :md5sum-) "8718797d8c5c69f369339615842a11b1")
(setf (get atom_msgs::PointCloudWithLidar3DLabels :datatype-) "atom_msgs/PointCloudWithLidar3DLabels")
(setf (get atom_msgs::PointCloudWithLidar3DLabels :definition-)
      "Header header
sensor_msgs/PointCloud2 point_cloud
Lidar3DLabels[] patterns

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: atom_msgs/Lidar3DLabels
string pattern_name
bool detected
uint32[] idxs
uint32[] idxs_limit_points

")



(provide :atom_msgs/PointCloudWithLidar3DLabels "8718797d8c5c69f369339615842a11b1")


