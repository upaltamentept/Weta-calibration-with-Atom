;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::SaveCollection)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'SaveCollection (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::SAVECOLLECTION")
  (make-package "ATOM_MSGS::SAVECOLLECTION"))
(unless (find-package "ATOM_MSGS::SAVECOLLECTIONREQUEST")
  (make-package "ATOM_MSGS::SAVECOLLECTIONREQUEST"))
(unless (find-package "ATOM_MSGS::SAVECOLLECTIONRESPONSE")
  (make-package "ATOM_MSGS::SAVECOLLECTIONRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::SaveCollectionRequest
  :super ros::object
  :slots ())

(defmethod atom_msgs::SaveCollectionRequest
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

(defclass atom_msgs::SaveCollectionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod atom_msgs::SaveCollectionResponse
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

(defclass atom_msgs::SaveCollection
  :super ros::object
  :slots ())

(setf (get atom_msgs::SaveCollection :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::SaveCollection :datatype-) "atom_msgs/SaveCollection")
(setf (get atom_msgs::SaveCollection :request) atom_msgs::SaveCollectionRequest)
(setf (get atom_msgs::SaveCollection :response) atom_msgs::SaveCollectionResponse)

(defmethod atom_msgs::SaveCollectionRequest
  (:response () (instance atom_msgs::SaveCollectionResponse :init)))

(setf (get atom_msgs::SaveCollectionRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::SaveCollectionRequest :datatype-) "atom_msgs/SaveCollectionRequest")
(setf (get atom_msgs::SaveCollectionRequest :definition-)
      "---
bool success
string message


")

(setf (get atom_msgs::SaveCollectionResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::SaveCollectionResponse :datatype-) "atom_msgs/SaveCollectionResponse")
(setf (get atom_msgs::SaveCollectionResponse :definition-)
      "---
bool success
string message


")



(provide :atom_msgs/SaveCollection "937c9679a518e3a18d831e57125ea522")


