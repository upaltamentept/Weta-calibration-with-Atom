;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::Detection2D)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'Detection2D (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::DETECTION2D")
  (make-package "ATOM_MSGS::DETECTION2D"))

(in-package "ROS")
;;//! \htmlinclude Detection2D.msg.html


(defclass atom_msgs::Detection2D
  :super ros::object
  :slots (_x _y _id ))

(defmethod atom_msgs::Detection2D
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _id (round __id))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atom_msgs::Detection2D :md5sum-) "7de5b7b91916c5429af17aa0dec8ef0f")
(setf (get atom_msgs::Detection2D :datatype-) "atom_msgs/Detection2D")
(setf (get atom_msgs::Detection2D :definition-)
      "float32 x
float32 y
uint32 id


")



(provide :atom_msgs/Detection2D "7de5b7b91916c5429af17aa0dec8ef0f")


