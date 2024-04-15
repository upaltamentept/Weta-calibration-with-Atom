; Auto-generated. Do not edit!


(cl:in-package atom_msgs-msg)


;//! \htmlinclude Lidar3DLabels.msg.html

(cl:defclass <Lidar3DLabels> (roslisp-msg-protocol:ros-message)
  ((pattern_name
    :reader pattern_name
    :initarg :pattern_name
    :type cl:string
    :initform "")
   (detected
    :reader detected
    :initarg :detected
    :type cl:boolean
    :initform cl:nil)
   (idxs
    :reader idxs
    :initarg :idxs
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (idxs_limit_points
    :reader idxs_limit_points
    :initarg :idxs_limit_points
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Lidar3DLabels (<Lidar3DLabels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lidar3DLabels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lidar3DLabels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-msg:<Lidar3DLabels> is deprecated: use atom_msgs-msg:Lidar3DLabels instead.")))

(cl:ensure-generic-function 'pattern_name-val :lambda-list '(m))
(cl:defmethod pattern_name-val ((m <Lidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:pattern_name-val is deprecated.  Use atom_msgs-msg:pattern_name instead.")
  (pattern_name m))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <Lidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:detected-val is deprecated.  Use atom_msgs-msg:detected instead.")
  (detected m))

(cl:ensure-generic-function 'idxs-val :lambda-list '(m))
(cl:defmethod idxs-val ((m <Lidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:idxs-val is deprecated.  Use atom_msgs-msg:idxs instead.")
  (idxs m))

(cl:ensure-generic-function 'idxs_limit_points-val :lambda-list '(m))
(cl:defmethod idxs_limit_points-val ((m <Lidar3DLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:idxs_limit_points-val is deprecated.  Use atom_msgs-msg:idxs_limit_points instead.")
  (idxs_limit_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lidar3DLabels>) ostream)
  "Serializes a message object of type '<Lidar3DLabels>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pattern_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pattern_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detected) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idxs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idxs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idxs_limit_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'idxs_limit_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lidar3DLabels>) istream)
  "Deserializes a message object of type '<Lidar3DLabels>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pattern_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pattern_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'detected) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idxs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idxs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idxs_limit_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idxs_limit_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lidar3DLabels>)))
  "Returns string type for a message object of type '<Lidar3DLabels>"
  "atom_msgs/Lidar3DLabels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lidar3DLabels)))
  "Returns string type for a message object of type 'Lidar3DLabels"
  "atom_msgs/Lidar3DLabels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lidar3DLabels>)))
  "Returns md5sum for a message object of type '<Lidar3DLabels>"
  "1feeee9a8d44fc8fa147e3f3e0194a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lidar3DLabels)))
  "Returns md5sum for a message object of type 'Lidar3DLabels"
  "1feeee9a8d44fc8fa147e3f3e0194a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lidar3DLabels>)))
  "Returns full string definition for message of type '<Lidar3DLabels>"
  (cl:format cl:nil "string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lidar3DLabels)))
  "Returns full string definition for message of type 'Lidar3DLabels"
  (cl:format cl:nil "string pattern_name~%bool detected~%uint32[] idxs~%uint32[] idxs_limit_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lidar3DLabels>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pattern_name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idxs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idxs_limit_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lidar3DLabels>))
  "Converts a ROS message object to a list"
  (cl:list 'Lidar3DLabels
    (cl:cons ':pattern_name (pattern_name msg))
    (cl:cons ':detected (detected msg))
    (cl:cons ':idxs (idxs msg))
    (cl:cons ':idxs_limit_points (idxs_limit_points msg))
))
