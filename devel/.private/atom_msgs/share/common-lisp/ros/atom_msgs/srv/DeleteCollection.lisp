; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude DeleteCollection-request.msg.html

(cl:defclass <DeleteCollection-request> (roslisp-msg-protocol:ros-message)
  ((collection_name
    :reader collection_name
    :initarg :collection_name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteCollection-request (<DeleteCollection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCollection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCollection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<DeleteCollection-request> is deprecated: use atom_msgs-srv:DeleteCollection-request instead.")))

(cl:ensure-generic-function 'collection_name-val :lambda-list '(m))
(cl:defmethod collection_name-val ((m <DeleteCollection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:collection_name-val is deprecated.  Use atom_msgs-srv:collection_name instead.")
  (collection_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCollection-request>) ostream)
  "Serializes a message object of type '<DeleteCollection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collection_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collection_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCollection-request>) istream)
  "Deserializes a message object of type '<DeleteCollection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collection_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collection_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCollection-request>)))
  "Returns string type for a service object of type '<DeleteCollection-request>"
  "atom_msgs/DeleteCollectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCollection-request)))
  "Returns string type for a service object of type 'DeleteCollection-request"
  "atom_msgs/DeleteCollectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCollection-request>)))
  "Returns md5sum for a message object of type '<DeleteCollection-request>"
  "7153cde40c335857eb1dbcb61409e936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCollection-request)))
  "Returns md5sum for a message object of type 'DeleteCollection-request"
  "7153cde40c335857eb1dbcb61409e936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCollection-request>)))
  "Returns full string definition for message of type '<DeleteCollection-request>"
  (cl:format cl:nil "string collection_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCollection-request)))
  "Returns full string definition for message of type 'DeleteCollection-request"
  (cl:format cl:nil "string collection_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCollection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'collection_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCollection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCollection-request
    (cl:cons ':collection_name (collection_name msg))
))
;//! \htmlinclude DeleteCollection-response.msg.html

(cl:defclass <DeleteCollection-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteCollection-response (<DeleteCollection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCollection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCollection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<DeleteCollection-response> is deprecated: use atom_msgs-srv:DeleteCollection-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteCollection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:success-val is deprecated.  Use atom_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteCollection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:message-val is deprecated.  Use atom_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCollection-response>) ostream)
  "Serializes a message object of type '<DeleteCollection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCollection-response>) istream)
  "Deserializes a message object of type '<DeleteCollection-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCollection-response>)))
  "Returns string type for a service object of type '<DeleteCollection-response>"
  "atom_msgs/DeleteCollectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCollection-response)))
  "Returns string type for a service object of type 'DeleteCollection-response"
  "atom_msgs/DeleteCollectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCollection-response>)))
  "Returns md5sum for a message object of type '<DeleteCollection-response>"
  "7153cde40c335857eb1dbcb61409e936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCollection-response)))
  "Returns md5sum for a message object of type 'DeleteCollection-response"
  "7153cde40c335857eb1dbcb61409e936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCollection-response>)))
  "Returns full string definition for message of type '<DeleteCollection-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCollection-response)))
  "Returns full string definition for message of type 'DeleteCollection-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCollection-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCollection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCollection-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteCollection)))
  'DeleteCollection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteCollection)))
  'DeleteCollection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCollection)))
  "Returns string type for a service object of type '<DeleteCollection>"
  "atom_msgs/DeleteCollection")