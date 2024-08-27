;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::All_Camera_Detection_Info)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'All_Camera_Detection_Info (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::ALL_CAMERA_DETECTION_INFO")
  (make-package "ROBOSAPIENS_TOOL::ALL_CAMERA_DETECTION_INFO"))

(in-package "ROS")
;;//! \htmlinclude All_Camera_Detection_Info.msg.html


(defclass robosapiens_tool::All_Camera_Detection_Info
  :super ros::object
  :slots (_all_cam_data_list ))

(defmethod robosapiens_tool::All_Camera_Detection_Info
  (:init
   (&key
    ((:all_cam_data_list __all_cam_data_list) ())
    )
   (send-super :init)
   (setq _all_cam_data_list __all_cam_data_list)
   self)
  (:all_cam_data_list
   (&rest __all_cam_data_list)
   (if (keywordp (car __all_cam_data_list))
       (send* _all_cam_data_list __all_cam_data_list)
     (progn
       (if __all_cam_data_list (setq _all_cam_data_list (car __all_cam_data_list)))
       _all_cam_data_list)))
  (:serialization-length
   ()
   (+
    ;; robosapiens_tool/Camera_Box_Detection_Confidence[] _all_cam_data_list
    (apply #'+ (send-all _all_cam_data_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robosapiens_tool/Camera_Box_Detection_Confidence[] _all_cam_data_list
     (write-long (length _all_cam_data_list) s)
     (dolist (elem _all_cam_data_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robosapiens_tool/Camera_Box_Detection_Confidence[] _all_cam_data_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _all_cam_data_list (let (r) (dotimes (i n) (push (instance robosapiens_tool::Camera_Box_Detection_Confidence :init) r)) r))
     (dolist (elem- _all_cam_data_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robosapiens_tool::All_Camera_Detection_Info :md5sum-) "b20c90fe57f1708af683b629d64b5766")
(setf (get robosapiens_tool::All_Camera_Detection_Info :datatype-) "robosapiens_tool/All_Camera_Detection_Info")
(setf (get robosapiens_tool::All_Camera_Detection_Info :definition-)
      "Camera_Box_Detection_Confidence[] all_cam_data_list

================================================================================
MSG: robosapiens_tool/Camera_Box_Detection_Confidence
string camera_id

int32 detection

float32 confidence

")



(provide :robosapiens_tool/All_Camera_Detection_Info "b20c90fe57f1708af683b629d64b5766")


