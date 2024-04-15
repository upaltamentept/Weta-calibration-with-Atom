;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::ToggleAutomaticDataCollector)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'ToggleAutomaticDataCollector (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTOR")
  (make-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTOR"))
(unless (find-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTORREQUEST")
  (make-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTORREQUEST"))
(unless (find-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTORRESPONSE")
  (make-package "ATOM_MSGS::TOGGLEAUTOMATICDATACOLLECTORRESPONSE"))

(in-package "ROS")





(defclass atom_msgs::ToggleAutomaticDataCollectorRequest
  :super ros::object
  :slots ())

(defmethod atom_msgs::ToggleAutomaticDataCollectorRequest
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

(defclass atom_msgs::ToggleAutomaticDataCollectorResponse
  :super ros::object
  :slots (_success _message ))

(defmethod atom_msgs::ToggleAutomaticDataCollectorResponse
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

(defclass atom_msgs::ToggleAutomaticDataCollector
  :super ros::object
  :slots ())

(setf (get atom_msgs::ToggleAutomaticDataCollector :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::ToggleAutomaticDataCollector :datatype-) "atom_msgs/ToggleAutomaticDataCollector")
(setf (get atom_msgs::ToggleAutomaticDataCollector :request) atom_msgs::ToggleAutomaticDataCollectorRequest)
(setf (get atom_msgs::ToggleAutomaticDataCollector :response) atom_msgs::ToggleAutomaticDataCollectorResponse)

(defmethod atom_msgs::ToggleAutomaticDataCollectorRequest
  (:response () (instance atom_msgs::ToggleAutomaticDataCollectorResponse :init)))

(setf (get atom_msgs::ToggleAutomaticDataCollectorRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::ToggleAutomaticDataCollectorRequest :datatype-) "atom_msgs/ToggleAutomaticDataCollectorRequest")
(setf (get atom_msgs::ToggleAutomaticDataCollectorRequest :definition-)
      "---
bool success
string message


")

(setf (get atom_msgs::ToggleAutomaticDataCollectorResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get atom_msgs::ToggleAutomaticDataCollectorResponse :datatype-) "atom_msgs/ToggleAutomaticDataCollectorResponse")
(setf (get atom_msgs::ToggleAutomaticDataCollectorResponse :definition-)
      "---
bool success
string message


")



(provide :atom_msgs/ToggleAutomaticDataCollector "937c9679a518e3a18d831e57125ea522")


