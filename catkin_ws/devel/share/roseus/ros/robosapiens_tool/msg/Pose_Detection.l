;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::Pose_Detection)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'Pose_Detection (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::POSE_DETECTION")
  (make-package "ROBOSAPIENS_TOOL::POSE_DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Pose_Detection.msg.html


(defclass robosapiens_tool::Pose_Detection
  :super ros::object
  :slots (_confidence _detection ))

(defmethod robosapiens_tool::Pose_Detection
  (:init
   (&key
    ((:confidence __confidence) 0.0)
    ((:detection __detection) 0)
    )
   (send-super :init)
   (setq _confidence (float __confidence))
   (setq _detection (round __detection))
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:detection
   (&optional __detection)
   (if __detection (setq _detection __detection)) _detection)
  (:serialization-length
   ()
   (+
    ;; float32 _confidence
    4
    ;; int32 _detection
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _detection
       (write-long _detection s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _detection
     (setq _detection (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robosapiens_tool::Pose_Detection :md5sum-) "de333b98e0f13b5e641849ba0efa7eda")
(setf (get robosapiens_tool::Pose_Detection :datatype-) "robosapiens_tool/Pose_Detection")
(setf (get robosapiens_tool::Pose_Detection :definition-)
      "

float32 confidence

int32 detection


")



(provide :robosapiens_tool/Pose_Detection "de333b98e0f13b5e641849ba0efa7eda")


