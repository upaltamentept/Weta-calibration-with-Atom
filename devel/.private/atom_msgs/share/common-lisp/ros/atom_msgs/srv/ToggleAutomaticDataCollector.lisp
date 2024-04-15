; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude ToggleAutomaticDataCollector-request.msg.html

(cl:defclass <ToggleAutomaticDataCollector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleAutomaticDataCollector-request (<ToggleAutomaticDataCollector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleAutomaticDataCollector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleAutomaticDataCollector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<ToggleAutomaticDataCollector-request> is deprecated: use atom_msgs-srv:ToggleAutomaticDataCollector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleAutomaticDataCollector-request>) ostream)
  "Serializes a message object of type '<ToggleAutomaticDataCollector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleAutomaticDataCollector-request>) istream)
  "Deserializes a message object of type '<ToggleAutomaticDataCollector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleAutomaticDataCollector-request>)))
  "Returns string type for a service object of type '<ToggleAutomaticDataCollector-request>"
  "atom_msgs/ToggleAutomaticDataCollectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAutomaticDataCollector-request)))
  "Returns string type for a service object of type 'ToggleAutomaticDataCollector-request"
  "atom_msgs/ToggleAutomaticDataCollectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleAutomaticDataCollector-request>)))
  "Returns md5sum for a message object of type '<ToggleAutomaticDataCollector-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleAutomaticDataCollector-request)))
  "Returns md5sum for a message object of type 'ToggleAutomaticDataCollector-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleAutomaticDataCollector-request>)))
  "Returns full string definition for message of type '<ToggleAutomaticDataCollector-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleAutomaticDataCollector-request)))
  "Returns full string definition for message of type 'ToggleAutomaticDataCollector-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleAutomaticDataCollector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleAutomaticDataCollector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleAutomaticDataCollector-request
))
;//! \htmlinclude ToggleAutomaticDataCollector-response.msg.html

(cl:defclass <ToggleAutomaticDataCollector-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ToggleAutomaticDataCollector-response (<ToggleAutomaticDataCollector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleAutomaticDataCollector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleAutomaticDataCollector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<ToggleAutomaticDataCollector-response> is deprecated: use atom_msgs-srv:ToggleAutomaticDataCollector-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ToggleAutomaticDataCollector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:success-val is deprecated.  Use atom_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ToggleAutomaticDataCollector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:message-val is deprecated.  Use atom_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleAutomaticDataCollector-response>) ostream)
  "Serializes a message object of type '<ToggleAutomaticDataCollector-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleAutomaticDataCollector-response>) istream)
  "Deserializes a message object of type '<ToggleAutomaticDataCollector-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleAutomaticDataCollector-response>)))
  "Returns string type for a service object of type '<ToggleAutomaticDataCollector-response>"
  "atom_msgs/ToggleAutomaticDataCollectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAutomaticDataCollector-response)))
  "Returns string type for a service object of type 'ToggleAutomaticDataCollector-response"
  "atom_msgs/ToggleAutomaticDataCollectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleAutomaticDataCollector-response>)))
  "Returns md5sum for a message object of type '<ToggleAutomaticDataCollector-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleAutomaticDataCollector-response)))
  "Returns md5sum for a message object of type 'ToggleAutomaticDataCollector-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleAutomaticDataCollector-response>)))
  "Returns full string definition for message of type '<ToggleAutomaticDataCollector-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleAutomaticDataCollector-response)))
  "Returns full string definition for message of type 'ToggleAutomaticDataCollector-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleAutomaticDataCollector-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleAutomaticDataCollector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleAutomaticDataCollector-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleAutomaticDataCollector)))
  'ToggleAutomaticDataCollector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleAutomaticDataCollector)))
  'ToggleAutomaticDataCollector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleAutomaticDataCollector)))
  "Returns string type for a service object of type '<ToggleAutomaticDataCollector>"
  "atom_msgs/ToggleAutomaticDataCollector")