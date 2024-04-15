;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::RGBLabels)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'RGBLabels (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::RGBLABELS")
  (make-package "ATOM_MSGS::RGBLABELS"))

(in-package "ROS")
;;//! \htmlinclude RGBLabels.msg.html


(defclass atom_msgs::RGBLabels
  :super ros::object
  :slots (_pattern_name _detected _idxs ))

(defmethod atom_msgs::RGBLabels
  (:init
   (&key
    ((:pattern_name __pattern_name) "")
    ((:detected __detected) nil)
    ((:idxs __idxs) ())
    )
   (send-super :init)
   (setq _pattern_name (string __pattern_name))
   (setq _detected __detected)
   (setq _idxs __idxs)
   self)
  (:pattern_name
   (&optional __pattern_name)
   (if __pattern_name (setq _pattern_name __pattern_name)) _pattern_name)
  (:detected
   (&optional (__detected :null))
   (if (not (eq __detected :null)) (setq _detected __detected)) _detected)
  (:idxs
   (&rest __idxs)
   (if (keywordp (car __idxs))
       (send* _idxs __idxs)
     (progn
       (if __idxs (setq _idxs (car __idxs)))
       _idxs)))
  (:serialization-length
   ()
   (+
    ;; string _pattern_name
    4 (length _pattern_name)
    ;; bool _detected
    1
    ;; atom_msgs/Detection2D[] _idxs
    (apply #'+ (send-all _idxs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pattern_name
       (write-long (length _pattern_name) s) (princ _pattern_name s)
     ;; bool _detected
       (if _detected (write-byte -1 s) (write-byte 0 s))
     ;; atom_msgs/Detection2D[] _idxs
     (write-long (length _idxs) s)
     (dolist (elem _idxs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pattern_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pattern_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _detected
     (setq _detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; atom_msgs/Detection2D[] _idxs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idxs (let (r) (dotimes (i n) (push (instance atom_msgs::Detection2D :init) r)) r))
     (dolist (elem- _idxs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get atom_msgs::RGBLabels :md5sum-) "490746e211ca178da64659e6df5e160d")
(setf (get atom_msgs::RGBLabels :datatype-) "atom_msgs/RGBLabels")
(setf (get atom_msgs::RGBLabels :definition-)
      "string pattern_name
bool detected
Detection2D[] idxs

================================================================================
MSG: atom_msgs/Detection2D
float32 x
float32 y
uint32 id


")



(provide :atom_msgs/RGBLabels "490746e211ca178da64659e6df5e160d")


