; Auto-generated. Do not edit!


(cl:in-package atom_msgs-msg)


;//! \htmlinclude RGBLabels.msg.html

(cl:defclass <RGBLabels> (roslisp-msg-protocol:ros-message)
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
    :type (cl:vector atom_msgs-msg:Detection2D)
   :initform (cl:make-array 0 :element-type 'atom_msgs-msg:Detection2D :initial-element (cl:make-instance 'atom_msgs-msg:Detection2D))))
)

(cl:defclass RGBLabels (<RGBLabels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBLabels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBLabels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-msg:<RGBLabels> is deprecated: use atom_msgs-msg:RGBLabels instead.")))

(cl:ensure-generic-function 'pattern_name-val :lambda-list '(m))
(cl:defmethod pattern_name-val ((m <RGBLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:pattern_name-val is deprecated.  Use atom_msgs-msg:pattern_name instead.")
  (pattern_name m))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <RGBLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:detected-val is deprecated.  Use atom_msgs-msg:detected instead.")
  (detected m))

(cl:ensure-generic-function 'idxs-val :lambda-list '(m))
(cl:defmethod idxs-val ((m <RGBLabels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:idxs-val is deprecated.  Use atom_msgs-msg:idxs instead.")
  (idxs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBLabels>) ostream)
  "Serializes a message object of type '<RGBLabels>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'idxs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBLabels>) istream)
  "Deserializes a message object of type '<RGBLabels>"
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'atom_msgs-msg:Detection2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBLabels>)))
  "Returns string type for a message object of type '<RGBLabels>"
  "atom_msgs/RGBLabels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBLabels)))
  "Returns string type for a message object of type 'RGBLabels"
  "atom_msgs/RGBLabels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBLabels>)))
  "Returns md5sum for a message object of type '<RGBLabels>"
  "490746e211ca178da64659e6df5e160d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBLabels)))
  "Returns md5sum for a message object of type 'RGBLabels"
  "490746e211ca178da64659e6df5e160d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBLabels>)))
  "Returns full string definition for message of type '<RGBLabels>"
  (cl:format cl:nil "string pattern_name~%bool detected~%Detection2D[] idxs~%~%================================================================================~%MSG: atom_msgs/Detection2D~%float32 x~%float32 y~%uint32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBLabels)))
  "Returns full string definition for message of type 'RGBLabels"
  (cl:format cl:nil "string pattern_name~%bool detected~%Detection2D[] idxs~%~%================================================================================~%MSG: atom_msgs/Detection2D~%float32 x~%float32 y~%uint32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBLabels>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pattern_name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idxs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBLabels>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBLabels
    (cl:cons ':pattern_name (pattern_name msg))
    (cl:cons ':detected (detected msg))
    (cl:cons ':idxs (idxs msg))
))
