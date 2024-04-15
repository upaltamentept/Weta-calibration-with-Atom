; Auto-generated. Do not edit!


(cl:in-package atom_msgs-msg)


;//! \htmlinclude Detection2D.msg.html

(cl:defclass <Detection2D> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Detection2D (<Detection2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-msg:<Detection2D> is deprecated: use atom_msgs-msg:Detection2D instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:x-val is deprecated.  Use atom_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:y-val is deprecated.  Use atom_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-msg:id-val is deprecated.  Use atom_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection2D>) ostream)
  "Serializes a message object of type '<Detection2D>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection2D>) istream)
  "Deserializes a message object of type '<Detection2D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection2D>)))
  "Returns string type for a message object of type '<Detection2D>"
  "atom_msgs/Detection2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection2D)))
  "Returns string type for a message object of type 'Detection2D"
  "atom_msgs/Detection2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection2D>)))
  "Returns md5sum for a message object of type '<Detection2D>"
  "7de5b7b91916c5429af17aa0dec8ef0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection2D)))
  "Returns md5sum for a message object of type 'Detection2D"
  "7de5b7b91916c5429af17aa0dec8ef0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection2D>)))
  "Returns full string definition for message of type '<Detection2D>"
  (cl:format cl:nil "float32 x~%float32 y~%uint32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection2D)))
  "Returns full string definition for message of type 'Detection2D"
  (cl:format cl:nil "float32 x~%float32 y~%uint32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection2D>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection2D
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':id (id msg))
))
