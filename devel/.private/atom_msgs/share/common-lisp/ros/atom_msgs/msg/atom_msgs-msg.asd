
(cl:in-package :asdf)

(defsystem "atom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DepthImageWithDepthLabels" :depends-on ("_package_DepthImageWithDepthLabels"))
    (:file "_package_DepthImageWithDepthLabels" :depends-on ("_package"))
    (:file "DepthLabels" :depends-on ("_package_DepthLabels"))
    (:file "_package_DepthLabels" :depends-on ("_package"))
    (:file "Detection2D" :depends-on ("_package_Detection2D"))
    (:file "_package_Detection2D" :depends-on ("_package"))
    (:file "ImageWithRGBLabels" :depends-on ("_package_ImageWithRGBLabels"))
    (:file "_package_ImageWithRGBLabels" :depends-on ("_package"))
    (:file "Lidar3DLabels" :depends-on ("_package_Lidar3DLabels"))
    (:file "_package_Lidar3DLabels" :depends-on ("_package"))
    (:file "PointCloudWithLidar3DLabels" :depends-on ("_package_PointCloudWithLidar3DLabels"))
    (:file "_package_PointCloudWithLidar3DLabels" :depends-on ("_package"))
    (:file "RGBLabels" :depends-on ("_package_RGBLabels"))
    (:file "_package_RGBLabels" :depends-on ("_package"))
  ))