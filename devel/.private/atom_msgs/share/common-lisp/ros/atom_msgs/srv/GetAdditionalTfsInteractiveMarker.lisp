; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude GetAdditionalTfsInteractiveMarker-request.msg.html

(cl:defclass <GetAdditionalTfsInteractiveMarker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAdditionalTfsInteractiveMarker-request (<GetAdditionalTfsInteractiveMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAdditionalTfsInteractiveMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAdditionalTfsInteractiveMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetAdditionalTfsInteractiveMarker-request> is deprecated: use atom_msgs-srv:GetAdditionalTfsInteractiveMarker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAdditionalTfsInteractiveMarker-request>) ostream)
  "Serializes a message object of type '<GetAdditionalTfsInteractiveMarker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAdditionalTfsInteractiveMarker-request>) istream)
  "Deserializes a message object of type '<GetAdditionalTfsInteractiveMarker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAdditionalTfsInteractiveMarker-request>)))
  "Returns string type for a service object of type '<GetAdditionalTfsInteractiveMarker-request>"
  "atom_msgs/GetAdditionalTfsInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAdditionalTfsInteractiveMarker-request)))
  "Returns string type for a service object of type 'GetAdditionalTfsInteractiveMarker-request"
  "atom_msgs/GetAdditionalTfsInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAdditionalTfsInteractiveMarker-request>)))
  "Returns md5sum for a message object of type '<GetAdditionalTfsInteractiveMarker-request>"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAdditionalTfsInteractiveMarker-request)))
  "Returns md5sum for a message object of type 'GetAdditionalTfsInteractiveMarker-request"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAdditionalTfsInteractiveMarker-request>)))
  "Returns full string definition for message of type '<GetAdditionalTfsInteractiveMarker-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAdditionalTfsInteractiveMarker-request)))
  "Returns full string definition for message of type 'GetAdditionalTfsInteractiveMarker-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAdditionalTfsInteractiveMarker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAdditionalTfsInteractiveMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAdditionalTfsInteractiveMarker-request
))
;//! \htmlinclude GetAdditionalTfsInteractiveMarker-response.msg.html

(cl:defclass <GetAdditionalTfsInteractiveMarker-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetAdditionalTfsInteractiveMarker-response (<GetAdditionalTfsInteractiveMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAdditionalTfsInteractiveMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAdditionalTfsInteractiveMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetAdditionalTfsInteractiveMarker-response> is deprecated: use atom_msgs-srv:GetAdditionalTfsInteractiveMarker-response instead.")))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <GetAdditionalTfsInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:visible-val is deprecated.  Use atom_msgs-srv:visible instead.")
  (visible m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <GetAdditionalTfsInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:scale-val is deprecated.  Use atom_msgs-srv:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAdditionalTfsInteractiveMarker-response>) ostream)
  "Serializes a message object of type '<GetAdditionalTfsInteractiveMarker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visible) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAdditionalTfsInteractiveMarker-response>) istream)
  "Deserializes a message object of type '<GetAdditionalTfsInteractiveMarker-response>"
    (cl:setf (cl:slot-value msg 'visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAdditionalTfsInteractiveMarker-response>)))
  "Returns string type for a service object of type '<GetAdditionalTfsInteractiveMarker-response>"
  "atom_msgs/GetAdditionalTfsInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAdditionalTfsInteractiveMarker-response)))
  "Returns string type for a service object of type 'GetAdditionalTfsInteractiveMarker-response"
  "atom_msgs/GetAdditionalTfsInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAdditionalTfsInteractiveMarker-response>)))
  "Returns md5sum for a message object of type '<GetAdditionalTfsInteractiveMarker-response>"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAdditionalTfsInteractiveMarker-response)))
  "Returns md5sum for a message object of type 'GetAdditionalTfsInteractiveMarker-response"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAdditionalTfsInteractiveMarker-response>)))
  "Returns full string definition for message of type '<GetAdditionalTfsInteractiveMarker-response>"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAdditionalTfsInteractiveMarker-response)))
  "Returns full string definition for message of type 'GetAdditionalTfsInteractiveMarker-response"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAdditionalTfsInteractiveMarker-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAdditionalTfsInteractiveMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAdditionalTfsInteractiveMarker-response
    (cl:cons ':visible (visible msg))
    (cl:cons ':scale (scale msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAdditionalTfsInteractiveMarker)))
  'GetAdditionalTfsInteractiveMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAdditionalTfsInteractiveMarker)))
  'GetAdditionalTfsInteractiveMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAdditionalTfsInteractiveMarker)))
  "Returns string type for a service object of type '<GetAdditionalTfsInteractiveMarker>"
  "atom_msgs/GetAdditionalTfsInteractiveMarker")