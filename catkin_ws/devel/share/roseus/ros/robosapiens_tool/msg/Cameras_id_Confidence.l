;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::Cameras_id_Confidence)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'Cameras_id_Confidence (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::CAMERAS_ID_CONFIDENCE")
  (make-package "ROBOSAPIENS_TOOL::CAMERAS_ID_CONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude Cameras_id_Confidence.msg.html


(defclass robosapiens_tool::Cameras_id_Confidence
  :super ros::object
  :slots (_camera1_conf _camera2_conf _camera3_conf _camera4_conf ))

(defmethod robosapiens_tool::Cameras_id_Confidence
  (:init
   (&key
    ((:camera1_conf __camera1_conf) 0.0)
    ((:camera2_conf __camera2_conf) 0.0)
    ((:camera3_conf __camera3_conf) 0.0)
    ((:camera4_conf __camera4_conf) 0.0)
    )
   (send-super :init)
   (setq _camera1_conf (float __camera1_conf))
   (setq _camera2_conf (float __camera2_conf))
   (setq _camera3_conf (float __camera3_conf))
   (setq _camera4_conf (float __camera4_conf))
   self)
  (:camera1_conf
   (&optional __camera1_conf)
   (if __camera1_conf (setq _camera1_conf __camera1_conf)) _camera1_conf)
  (:camera2_conf
   (&optional __camera2_conf)
   (if __camera2_conf (setq _camera2_conf __camera2_conf)) _camera2_conf)
  (:camera3_conf
   (&optional __camera3_conf)
   (if __camera3_conf (setq _camera3_conf __camera3_conf)) _camera3_conf)
  (:camera4_conf
   (&optional __camera4_conf)
   (if __camera4_conf (setq _camera4_conf __camera4_conf)) _camera4_conf)
  (:serialization-length
   ()
   (+
    ;; float32 _camera1_conf
    4
    ;; float32 _camera2_conf
    4
    ;; float32 _camera3_conf
    4
    ;; float32 _camera4_conf
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _camera1_conf
       (sys::poke _camera1_conf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _camera2_conf
       (sys::poke _camera2_conf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _camera3_conf
       (sys::poke _camera3_conf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _camera4_conf
       (sys::poke _camera4_conf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _camera1_conf
     (setq _camera1_conf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _camera2_conf
     (setq _camera2_conf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _camera3_conf
     (setq _camera3_conf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _camera4_conf
     (setq _camera4_conf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robosapiens_tool::Cameras_id_Confidence :md5sum-) "c0d4772d7cc3a8c1b69088d5e653da29")
(setf (get robosapiens_tool::Cameras_id_Confidence :datatype-) "robosapiens_tool/Cameras_id_Confidence")
(setf (get robosapiens_tool::Cameras_id_Confidence :definition-)
      "float32 camera1_conf

float32 camera2_conf

float32 camera3_conf

float32 camera4_conf

")



(provide :robosapiens_tool/Cameras_id_Confidence "c0d4772d7cc3a8c1b69088d5e653da29")


