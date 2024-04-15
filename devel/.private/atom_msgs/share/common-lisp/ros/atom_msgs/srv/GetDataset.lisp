; Auto-generated. Do not edit!


(cl:in-package atom_msgs-srv)


;//! \htmlinclude GetDataset-request.msg.html

(cl:defclass <GetDataset-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDataset-request (<GetDataset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetDataset-request> is deprecated: use atom_msgs-srv:GetDataset-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataset-request>) ostream)
  "Serializes a message object of type '<GetDataset-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataset-request>) istream)
  "Deserializes a message object of type '<GetDataset-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataset-request>)))
  "Returns string type for a service object of type '<GetDataset-request>"
  "atom_msgs/GetDatasetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataset-request)))
  "Returns string type for a service object of type 'GetDataset-request"
  "atom_msgs/GetDatasetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataset-request>)))
  "Returns md5sum for a message object of type '<GetDataset-request>"
  "f95a59a2834b82b7b9f74a87d123f078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataset-request)))
  "Returns md5sum for a message object of type 'GetDataset-request"
  "f95a59a2834b82b7b9f74a87d123f078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataset-request>)))
  "Returns full string definition for message of type '<GetDataset-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataset-request)))
  "Returns full string definition for message of type 'GetDataset-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataset-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataset-request
))
;//! \htmlinclude GetDataset-response.msg.html

(cl:defclass <GetDataset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (dataset_json
    :reader dataset_json
    :initarg :dataset_json
    :type cl:string
    :initform ""))
)

(cl:defclass GetDataset-response (<GetDataset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atom_msgs-srv:<GetDataset-response> is deprecated: use atom_msgs-srv:GetDataset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetDataset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:success-val is deprecated.  Use atom_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'dataset_json-val :lambda-list '(m))
(cl:defmethod dataset_json-val ((m <GetDataset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atom_msgs-srv:dataset_json-val is deprecated.  Use atom_msgs-srv:dataset_json instead.")
  (dataset_json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataset-response>) ostream)
  "Serializes a message object of type '<GetDataset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataset_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataset_json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataset-response>) istream)
  "Deserializes a message object of type '<GetDataset-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataset_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dataset_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataset-response>)))
  "Returns string type for a service object of type '<GetDataset-response>"
  "atom_msgs/GetDatasetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataset-response)))
  "Returns string type for a service object of type 'GetDataset-response"
  "atom_msgs/GetDatasetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataset-response>)))
  "Returns md5sum for a message object of type '<GetDataset-response>"
  "f95a59a2834b82b7b9f74a87d123f078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataset-response)))
  "Returns md5sum for a message object of type 'GetDataset-response"
  "f95a59a2834b82b7b9f74a87d123f078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataset-response>)))
  "Returns full string definition for message of type '<GetDataset-response>"
  (cl:format cl:nil "bool success~%string dataset_json~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataset-response)))
  "Returns full string definition for message of type 'GetDataset-response"
  (cl:format cl:nil "bool success~%string dataset_json~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataset-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'dataset_json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataset-response
    (cl:cons ':success (success msg))
    (cl:cons ':dataset_json (dataset_json msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDataset)))
  'GetDataset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDataset)))
  'GetDataset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataset)))
  "Returns string type for a service object of type '<GetDataset>"
  "atom_msgs/GetDataset")