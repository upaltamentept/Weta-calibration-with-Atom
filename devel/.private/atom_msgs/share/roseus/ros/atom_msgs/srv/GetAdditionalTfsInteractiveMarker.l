;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::GetAdditionalTfsInteractiveMarker)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'GetAdditionalTfsInteractiveMarker (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKER")
  (make-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKER"))
(unless (find-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKERREQUEST")
  (make-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKERREQUEST"))
(unless (find-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKERRESPONSE")
  (make-package "ATOM_MSGS::GETADDITIONALTFSINTERACTIVEMARKERRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::GetAdditionalTfsInteractiveMarkerRequest
  :super ros::object
  :slots ())

(defmethod atom_msgs::GetAdditionalTfsInteractiveMarkerRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass atom_msgs::GetAdditionalTfsInteractiveMarkerResponse
  :super ros::object
  :slots (_visible _scale ))

(defmethod atom_msgs::GetAdditionalTfsInteractiveMarkerResponse
  (:init
   (&key
    ((:visible __visible) nil)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _visible __visible)
   (setq _scale (float __scale))
   self)
  (:visible
   (&optional (__visible :null))
   (if (not (eq __visible :null)) (setq _visible __visible)) _visible)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; bool _visible
    1
    ;; float32 _scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _visible
       (if _visible (write-byte -1 s) (write-byte 0 s))
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _visible
     (setq _visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass atom_msgs::GetAdditionalTfsInteractiveMarker
  :super ros::object
  :slots ())

(setf (get atom_msgs::GetAdditionalTfsInteractiveMarker :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarker :datatype-) "atom_msgs/GetAdditionalTfsInteractiveMarker")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarker :request) atom_msgs::GetAdditionalTfsInteractiveMarkerRequest)
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarker :response) atom_msgs::GetAdditionalTfsInteractiveMarkerResponse)

(defmethod atom_msgs::GetAdditionalTfsInteractiveMarkerRequest
  (:response () (instance atom_msgs::GetAdditionalTfsInteractiveMarkerResponse :init)))

(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerRequest :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerRequest :datatype-) "atom_msgs/GetAdditionalTfsInteractiveMarkerRequest")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerRequest :definition-)
      "---
bool visible
float32 scale

")

(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerResponse :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerResponse :datatype-) "atom_msgs/GetAdditionalTfsInteractiveMarkerResponse")
(setf (get atom_msgs::GetAdditionalTfsInteractiveMarkerResponse :definition-)
      "---
bool visible
float32 scale

")



(provide :atom_msgs/GetAdditionalTfsInteractiveMarker "a13bc23ac434a77acb1a1c56a01ae850")


