; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude GetSensorInteractiveMarker-request.msg.html

(cl:defclass <GetSensorInteractiveMarker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSensorInteractiveMarker-request (<GetSensorInteractiveMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSensorInteractiveMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSensorInteractiveMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetSensorInteractiveMarker-request> is deprecated: use atom_msgs-srv:GetSensorInteractiveMarker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSensorInteractiveMarker-request>) ostream)
  "Serializes a message object of type '<GetSensorInteractiveMarker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSensorInteractiveMarker-request>) istream)
  "Deserializes a message object of type '<GetSensorInteractiveMarker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSensorInteractiveMarker-request>)))
  "Returns string type for a service object of type '<GetSensorInteractiveMarker-request>"
  "atom_msgs/GetSensorInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorInteractiveMarker-request)))
  "Returns string type for a service object of type 'GetSensorInteractiveMarker-request"
  "atom_msgs/GetSensorInteractiveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSensorInteractiveMarker-request>)))
  "Returns md5sum for a message object of type '<GetSensorInteractiveMarker-request>"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSensorInteractiveMarker-request)))
  "Returns md5sum for a message object of type 'GetSensorInteractiveMarker-request"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSensorInteractiveMarker-request>)))
  "Returns full string definition for message of type '<GetSensorInteractiveMarker-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSensorInteractiveMarker-request)))
  "Returns full string definition for message of type 'GetSensorInteractiveMarker-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSensorInteractiveMarker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSensorInteractiveMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSensorInteractiveMarker-request
))
;//! \htmlinclude GetSensorInteractiveMarker-response.msg.html

(cl:defclass <GetSensorInteractiveMarker-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetSensorInteractiveMarker-response (<GetSensorInteractiveMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSensorInteractiveMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSensorInteractiveMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetSensorInteractiveMarker-response> is deprecated: use atom_msgs-srv:GetSensorInteractiveMarker-response instead.")))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <GetSensorInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:visible-val is deprecated.  Use atom_msgs-srv:visible instead.")
  (visible m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <GetSensorInteractiveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:scale-val is deprecated.  Use atom_msgs-srv:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSensorInteractiveMarker-response>) ostream)
  "Serializes a message object of type '<GetSensorInteractiveMarker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visible) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSensorInteractiveMarker-response>) istream)
  "Deserializes a message object of type '<GetSensorInteractiveMarker-response>"
    (cl:setf (cl:slot-value msg 'visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSensorInteractiveMarker-response>)))
  "Returns string type for a service object of type '<GetSensorInteractiveMarker-response>"
  "atom_msgs/GetSensorInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorInteractiveMarker-response)))
  "Returns string type for a service object of type 'GetSensorInteractiveMarker-response"
  "atom_msgs/GetSensorInteractiveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSensorInteractiveMarker-response>)))
  "Returns md5sum for a message object of type '<GetSensorInteractiveMarker-response>"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSensorInteractiveMarker-response)))
  "Returns md5sum for a message object of type 'GetSensorInteractiveMarker-response"
  "a13bc23ac434a77acb1a1c56a01ae850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSensorInteractiveMarker-response>)))
  "Returns full string definition for message of type '<GetSensorInteractiveMarker-response>"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSensorInteractiveMarker-response)))
  "Returns full string definition for message of type 'GetSensorInteractiveMarker-response"
  (cl:format cl:nil "bool visible~%float32 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSensorInteractiveMarker-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSensorInteractiveMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSensorInteractiveMarker-response
    (cl:cons ':visible (visible msg))
    (cl:cons ':scale (scale msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSensorInteractiveMarker)))
  'GetSensorInteractiveMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSensorInteractiveMarker)))
  'GetSensorInteractiveMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorInteractiveMarker)))
  "Returns string type for a service object of type '<GetSensorInteractiveMarker>"
  "atom_msgs/GetSensorInteractiveMarker")