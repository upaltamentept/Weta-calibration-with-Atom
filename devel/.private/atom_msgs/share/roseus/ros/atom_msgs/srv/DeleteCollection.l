;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::DeleteCollection)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'DeleteCollection (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::DELETECOLLECTION")
  (make-package "ATOM_MSGS::DELETECOLLECTION"))
(unless (find-package "ATOM_MSGS::DELETECOLLECTIONREQUEST")
  (make-package "ATOM_MSGS::DELETECOLLECTIONREQUEST"))
(unless (find-package "ATOM_MSGS::DELETECOLLECTIONRESPONSE")
  (make-package "ATOM_MSGS::DELETECOLLECTIONRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::DeleteCollectionRequest
  :super ros::object
  :slots (_collection_name ))

(defmethod atom_msgs::DeleteCollectionRequest
  (:init
   (&key
    ((:collection_name __collection_name) "")
    )
   (send-super :init)
   (setq _collection_name (string __collection_name))
   self)
  (:collection_name
   (&optional __collection_name)
   (if __collection_name (setq _collection_name __collection_name)) _collection_name)
  (:serialization-length
   ()
   (+
    ;; string _collection_name
    4 (length _collection_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _collection_name
       (write-long (length _collection_name) s) (princ _collection_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _collection_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass atom_msgs::DeleteCollectionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod atom_msgs::DeleteCollectionResponse
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

(defclass atom_msgs::DeleteCollection
  :super ros::object
  :slots ())

(setf (get atom_msgs::DeleteCollection :md5sum-) "7153cde40c335857eb1dbcb61409e936")
(setf (get atom_msgs::DeleteCollection :datatype-) "atom_msgs/DeleteCollection")
(setf (get atom_msgs::DeleteCollection :request) atom_msgs::DeleteCollectionRequest)
(setf (get atom_msgs::DeleteCollection :response) atom_msgs::DeleteCollectionResponse)

(defmethod atom_msgs::DeleteCollectionRequest
  (:response () (instance atom_msgs::DeleteCollectionResponse :init)))

(setf (get atom_msgs::DeleteCollectionRequest :md5sum-) "7153cde40c335857eb1dbcb61409e936")
(setf (get atom_msgs::DeleteCollectionRequest :datatype-) "atom_msgs/DeleteCollectionRequest")
(setf (get atom_msgs::DeleteCollectionRequest :definition-)
      "string collection_name
---
bool success
string message


")

(setf (get atom_msgs::DeleteCollectionResponse :md5sum-) "7153cde40c335857eb1dbcb61409e936")
(setf (get atom_msgs::DeleteCollectionResponse :datatype-) "atom_msgs/DeleteCollectionResponse")
(setf (get atom_msgs::DeleteCollectionResponse :definition-)
      "string collection_name
---
bool success
string message


")



(provide :atom_msgs/DeleteCollection "7153cde40c335857eb1dbcb61409e936")


