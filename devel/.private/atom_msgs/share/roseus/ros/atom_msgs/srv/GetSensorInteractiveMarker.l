;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::GetSensorInteractiveMarker)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'GetSensorInteractiveMarker (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKER")
  (make-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKER"))
(unless (find-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKERREQUEST")
  (make-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKERREQUEST"))
(unless (find-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKERRESPONSE")
  (make-package "ATOM_MSGS::GETSENSORINTERACTIVEMARKERRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::GetSensorInteractiveMarkerRequest
  :super ros::object
  :slots ())

(defmethod atom_msgs::GetSensorInteractiveMarkerRequest
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

(defclass atom_msgs::GetSensorInteractiveMarkerResponse
  :super ros::object
  :slots (_visible _scale ))

(defmethod atom_msgs::GetSensorInteractiveMarkerResponse
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

(defclass atom_msgs::GetSensorInteractiveMarker
  :super ros::object
  :slots ())

(setf (get atom_msgs::GetSensorInteractiveMarker :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetSensorInteractiveMarker :datatype-) "atom_msgs/GetSensorInteractiveMarker")
(setf (get atom_msgs::GetSensorInteractiveMarker :request) atom_msgs::GetSensorInteractiveMarkerRequest)
(setf (get atom_msgs::GetSensorInteractiveMarker :response) atom_msgs::GetSensorInteractiveMarkerResponse)

(defmethod atom_msgs::GetSensorInteractiveMarkerRequest
  (:response () (instance atom_msgs::GetSensorInteractiveMarkerResponse :init)))

(setf (get atom_msgs::GetSensorInteractiveMarkerRequest :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetSensorInteractiveMarkerRequest :datatype-) "atom_msgs/GetSensorInteractiveMarkerRequest")
(setf (get atom_msgs::GetSensorInteractiveMarkerRequest :definition-)
      "---
bool visible
float32 scale

")

(setf (get atom_msgs::GetSensorInteractiveMarkerResponse :md5sum-) "a13bc23ac434a77acb1a1c56a01ae850")
(setf (get atom_msgs::GetSensorInteractiveMarkerResponse :datatype-) "atom_msgs/GetSensorInteractiveMarkerResponse")
(setf (get atom_msgs::GetSensorInteractiveMarkerResponse :definition-)
      "---
bool visible
float32 scale

")



(provide :atom_msgs/GetSensorInteractiveMarker "a13bc23ac434a77acb1a1c56a01ae850")


