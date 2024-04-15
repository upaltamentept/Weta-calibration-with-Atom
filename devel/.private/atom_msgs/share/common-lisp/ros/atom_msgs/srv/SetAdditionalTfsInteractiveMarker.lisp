; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude SetAdditionalTfsInteractiveMarker-request.msg.html

(cl:defclass <SetAdditionalTfsInteractiveMarker-request> (roslisp-msg-protocol:ros-message)
  ((visible
    :reader visible
    :initarg :visible
    :type cl:boolean
    :initform cl:nil)
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAdditionalTfsInteractiveMarker-request (<SetAdditionalTfsInteractiveMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAdditionalTfsInteractiveMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAdditionalTfsInteractiveMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<SetAdditionalTfsInteractiveMarker-request> is deprecated: use atom_msgs-srv:SetAdditionalTfsInteractiveMarker-request instead.")))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <SetAdditionalTfsInteractiveMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:visible-val is deprecated.  Use atom_msgs-srv:visible instead.")
  (visible m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <SetAdditionalTfsInteractiveMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:scale-val is deprecated.  Use atom_msgs-srv:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAdditionalTfsInteractiveMarker-request>) ostream)
  "Serializes a message object of type '<SetAdditionalTfsInteractiveMarker-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visible) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAdditionalTfsInteractiveMarker-request>) istream)
  "Deserializes a message object of type '<SetAdditionalTfsInteractiveMarker-request>"
    (cl:setf (cl:slot-value msg 'visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAdditionalTfsInteractiveMarker-request>)))
  "Returns string type for a service object of type '<SetAdditionalTfsInteractiveMarker-request>"
  "atom_msgs/SetAdditionalTfsInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAdditionalTfsInteractiveMarker-request)))
  "Returns string type for a service object of type 'SetAdditionalTfsInteractiveMarker-request"
  "atom_msgs/SetAdditionalTfsInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAdditionalTfsInteractiveMarker-request>)))
  "Returns md5sum for a message object of type '<SetAdditionalTfsInteractiveMarker-request>"
  "8512eb1fbd109250c8778605b27356c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAdditionalTfsInteractiveMarker-request)))
  "Returns md5sum for a message object of type 'SetAdditionalTfsInteractiveMarker-request"
  "8512eb1fbd109250c8778605b27356c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAdditionalTfsInteractiveMarker-request>)))
  "Returns full string definition for message of type '<SetAdditionalTfsInteractiveMarker-request>"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAdditionalTfsInteractiveMarker-request)))
  "Returns full string definition for message of type 'SetAdditionalTfsInteractiveMarker-request"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAdditionalTfsInteractiveMarker-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAdditionalTfsInteractiveMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAdditionalTfsInteractiveMarker-request
    (cl:cons ':visible (visible msg))
    (cl:cons ':scale (scale msg))
))
;//! \htmlinclude SetAdditionalTfsInteractiveMarker-response.msg.html

(cl:defclass <SetAdditionalTfsInteractiveMarker-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetAdditionalTfsInteractiveMarker-response (<SetAdditionalTfsInteractiveMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAdditionalTfsInteractiveMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAdditionalTfsInteractiveMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<SetAdditionalTfsInteractiveMarker-response> is deprecated: use atom_msgs-srv:SetAdditionalTfsInteractiveMarker-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAdditionalTfsInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:success-val is deprecated.  Use atom_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAdditionalTfsInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:message-val is deprecated.  Use atom_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAdditionalTfsInteractiveMarker-response>) ostream)
  "Serializes a message object of type '<SetAdditionalTfsInteractiveMarker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAdditionalTfsInteractiveMarker-response>) istream)
  "Deserializes a message object of type '<SetAdditionalTfsInteractiveMarker-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAdditionalTfsInteractiveMarker-response>)))
  "Returns string type for a service object of type '<SetAdditionalTfsInteractiveMarker-response>"
  "atom_msgs/SetAdditionalTfsInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAdditionalTfsInteractiveMarker-response)))
  "Returns string type for a service object of type 'SetAdditionalTfsInteractiveMarker-response"
  "atom_msgs/SetAdditionalTfsInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAdditionalTfsInteractiveMarker-response>)))
  "Returns md5sum for a message object of type '<SetAdditionalTfsInteractiveMarker-response>"
  "8512eb1fbd109250c8778605b27356c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAdditionalTfsInteractiveMarker-response)))
  "Returns md5sum for a message object of type 'SetAdditionalTfsInteractiveMarker-response"
  "8512eb1fbd109250c8778605b27356c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAdditionalTfsInteractiveMarker-response>)))
  "Returns full string definition for message of type '<SetAdditionalTfsInteractiveMarker-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAdditionalTfsInteractiveMarker-response)))
  "Returns full string definition for message of type 'SetAdditionalTfsInteractiveMarker-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAdditionalTfsInteractiveMarker-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAdditionalTfsInteractiveMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAdditionalTfsInteractiveMarker-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAdditionalTfsInteractiveMarker)))
  'SetAdditionalTfsInteractiveMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAdditionalTfsInteractiveMarker)))
  'SetAdditionalTfsInteractiveMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAdditionalTfsInteractiveMarker)))
  "Returns string type for a service object of type '<SetAdditionalTfsInteractiveMarker>"
  "atom_msgs/SetAdditionalTfsInteractiveMarker")