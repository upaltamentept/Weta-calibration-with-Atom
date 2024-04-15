;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::SetAdditionalTfsInteractiveMarker)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'SetAdditionalTfsInteractiveMarker (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKER")
  (make-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKER"))
(unless (find-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKERREQUEST")
  (make-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKERREQUEST"))
(unless (find-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKERRESPONSE")
  (make-package "ATOM_MSGS::SETADDITIONALTFSINTERACTIVEMARKERRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::SetAdditionalTfsInteractiveMarkerRequest
  :super ros::object
  :slots (_visible _scale ))

(defmethod atom_msgs::SetAdditionalTfsInteractiveMarkerRequest
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

(defclass atom_msgs::SetAdditionalTfsInteractiveMarkerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod atom_msgs::SetAdditionalTfsInteractiveMarkerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass atom_msgs::SetAdditionalTfsInteractiveMarker
  :super ros::object
  :slots ())

(setf (get atom_msgs::SetAdditionalTfsInteractiveMarker :md5sum-) "8512eb1fbd109250c8778605b27356c3")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarker :datatype-) "atom_msgs/SetAdditionalTfsInteractiveMarker")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarker :request) atom_msgs::SetAdditionalTfsInteractiveMarkerRequest)
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarker :response) atom_msgs::SetAdditionalTfsInteractiveMarkerResponse)

(defmethod atom_msgs::SetAdditionalTfsInteractiveMarkerRequest
  (:response () (instance atom_msgs::SetAdditionalTfsInteractiveMarkerResponse :init)))

(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerRequest :md5sum-) "8512eb1fbd109250c8778605b27356c3")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerRequest :datatype-) "atom_msgs/SetAdditionalTfsInteractiveMarkerRequest")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerRequest :definition-)
      "bool visible
float32 scale
---
bool success
string message

")

(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerResponse :md5sum-) "8512eb1fbd109250c8778605b27356c3")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerResponse :datatype-) "atom_msgs/SetAdditionalTfsInteractiveMarkerResponse")
(setf (get atom_msgs::SetAdditionalTfsInteractiveMarkerResponse :definition-)
      "bool visible
float32 scale
---
bool success
string message

")



(provide :atom_msgs/SetAdditionalTfsInteractiveMarker "8512eb1fbd109250c8778605b27356c3")


