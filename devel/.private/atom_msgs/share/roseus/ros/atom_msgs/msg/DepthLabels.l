;; Auto-generated. Do not edit!


(when (boundp 'atom_msgs::DepthLabels)
  (if (not (find-package "ATOM_MSGS"))
    (make-package "ATOM_MSGS"))
  (shadow 'DepthLabels (find-package "ATOM_MSGS")))
(unless (find-package "ATOM_MSGS::DEPTHLABELS")
  (make-package "ATOM_MSGS::DEPTHLABELS"))

(in-package "ROS")
;;//! \htmlinclude DepthLabels.msg.html


(defclass atom_msgs::DepthLabels
  :super ros::object
  :slots (_pattern_name _detected _idxs _idxs_limit_points ))

(defmethod atom_msgs::DepthLabels
  (:init
   (&key
    ((:pattern_name __pattern_name) "")
    ((:detected __detected) nil)
    ((:idxs __idxs) (make-array 0 :initial-element 0 :element-type :integer))
    ((:idxs_limit_points __idxs_limit_points) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _pattern_name (string __pattern_name))
   (setq _detected __detected)
   (setq _idxs __idxs)
   (setq _idxs_limit_points __idxs_limit_points)
   self)
  (:pattern_name
   (&optional __pattern_name)
   (if __pattern_name (setq _pattern_name __pattern_name)) _pattern_name)
  (:detected
   (&optional (__detected :null))
   (if (not (eq __detected :null)) (setq _detected __detected)) _detected)
  (:idxs
   (&optional __idxs)
   (if __idxs (setq _idxs __idxs)) _idxs)
  (:idxs_limit_points
   (&optional __idxs_limit_points)
   (if __idxs_limit_points (setq _idxs_limit_points __idxs_limit_points)) _idxs_limit_points)
  (:serialization-length
   ()
   (+
    ;; string _pattern_name
    4 (length _pattern_name)
    ;; bool _detected
    1
    ;; uint32[] _idxs
    (* 4    (length _idxs)) 4
    ;; uint32[] _idxs_limit_points
    (* 4    (length _idxs_limit_points)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pattern_name
       (write-long (length _pattern_name) s) (princ _pattern_name s)
     ;; bool _detected
       (if _detected (write-byte -1 s) (write-byte 0 s))
     ;; uint32[] _idxs
     (write-long (length _idxs) s)
     (dotimes (i (length _idxs))
       (write-long (elt _idxs i) s)
       )
     ;; uint32[] _idxs_limit_points
     (write-long (length _idxs_limit_points) s)
     (dotimes (i (length _idxs_limit_points))
       (write-long (elt _idxs_limit_points i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pattern_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pattern_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _detected
     (setq _detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32[] _idxs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idxs (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idxs i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _idxs_limit_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idxs_limit_points (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idxs_limit_points i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get atom_msgs::DepthLabels :md5sum-) "1feeee9a8d44fc8fa147e3f3e0194a1e")
(setf (get atom_msgs::DepthLabels :datatype-) "atom_msgs/DepthLabels")
(setf (get atom_msgs::DepthLabels :definition-)
      "string pattern_name
bool detected
uint32[] idxs
uint32[] idxs_limit_points

")



(provide :atom_msgs/DepthLabels "1feeee9a8d44fc8fa147e3f3e0194a1e")


