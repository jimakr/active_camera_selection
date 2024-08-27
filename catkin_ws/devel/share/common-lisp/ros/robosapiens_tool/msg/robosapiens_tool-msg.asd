
(cl:in-package :asdf)

(defsystem "robosapiens_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "All_Camera_Detection_Info" :depends-on ("_package_All_Camera_Detection_Info"))
    (:file "_package_All_Camera_Detection_Info" :depends-on ("_package"))
    (:file "Box" :depends-on ("_package_Box"))
    (:file "_package_Box" :depends-on ("_package"))
    (:file "Camera_Box_Detection_Confidence" :depends-on ("_package_Camera_Box_Detection_Confidence"))
    (:file "_package_Camera_Box_Detection_Confidence" :depends-on ("_package"))
    (:file "Cameras_id_Confidence" :depends-on ("_package_Cameras_id_Confidence"))
    (:file "_package_Cameras_id_Confidence" :depends-on ("_package"))
    (:file "Pose2DKeypoint" :depends-on ("_package_Pose2DKeypoint"))
    (:file "_package_Pose2DKeypoint" :depends-on ("_package"))
    (:file "PoseConfKpt2D" :depends-on ("_package_PoseConfKpt2D"))
    (:file "_package_PoseConfKpt2D" :depends-on ("_package"))
    (:file "Pose_Detection" :depends-on ("_package_Pose_Detection"))
    (:file "_package_Pose_Detection" :depends-on ("_package"))
    (:file "bbox" :depends-on ("_package_bbox"))
    (:file "_package_bbox" :depends-on ("_package"))
    (:file "id_conf" :depends-on ("_package_id_conf"))
    (:file "_package_id_conf" :depends-on ("_package"))
    (:file "img_bbox_heatmap" :depends-on ("_package_img_bbox_heatmap"))
    (:file "_package_img_bbox_heatmap" :depends-on ("_package"))
  ))