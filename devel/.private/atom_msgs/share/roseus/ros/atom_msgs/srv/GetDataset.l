;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::GetDataset)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'GetDataset (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::GETDATASET")
  (make-package "ATOM_MSGS::GETDATASET"))
(unless (find-package "ATOM_MSGS::GETDATASETREQUEST")
  (make-package "ATOM_MSGS::GETDATASETREQUEST"))
(unless (find-package "ATOM_MSGS::GETDATASETRESPONSE")
  (make-package "ATOM_MSGS::GETDATASETRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::GetDatasetRequest
  :super ros::object
  :slots ())

(defmethod atom_msgs::GetDatasetRequest
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

(defclass atom_msgs::GetDatasetResponse
  :super ros::object
  :slots (_success _dataset_json ))

(defmethod atom_msgs::GetDatasetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:dataset_json __dataset_json) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _dataset_json (string __dataset_json))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:dataset_json
   (&optional __dataset_json)
   (if __dataset_json (setq _dataset_json __dataset_json)) _dataset_json)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _dataset_json
    4 (length _dataset_json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _dataset_json
       (write-long (length _dataset_json) s) (princ _dataset_json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _dataset_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dataset_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass atom_msgs::GetDataset
  :super ros::object
  :slots ())

(setf (get atom_msgs::GetDataset :md5sum-) "f95a59a2834b82b7b9f74a87d123f078")
(setf (get atom_msgs::GetDataset :datatype-) "atom_msgs/GetDataset")
(setf (get atom_msgs::GetDataset :request) atom_msgs::GetDatasetRequest)
(setf (get atom_msgs::GetDataset :response) atom_msgs::GetDatasetResponse)

(defmethod atom_msgs::GetDatasetRequest
  (:response () (instance atom_msgs::GetDatasetResponse :init)))

(setf (get atom_msgs::GetDatasetRequest :md5sum-) "f95a59a2834b82b7b9f74a87d123f078")
(setf (get atom_msgs::GetDatasetRequest :datatype-) "atom_msgs/GetDatasetRequest")
(setf (get atom_msgs::GetDatasetRequest :definition-)
      "---
bool success
string dataset_json


")

(setf (get atom_msgs::GetDatasetResponse :md5sum-) "f95a59a2834b82b7b9f74a87d123f078")
(setf (get atom_msgs::GetDatasetResponse :datatype-) "atom_msgs/GetDatasetResponse")
(setf (get atom_msgs::GetDatasetResponse :definition-)
      "---
bool success
string dataset_json


")



(provide :atom_msgs/GetDataset "f95a59a2834b82b7b9f74a87d123f078")


