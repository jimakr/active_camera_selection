;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::Camera_Box_Detection_Confidence)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'Camera_Box_Detection_Confidence (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::CAMERA_BOX_DETECTION_CONFIDENCE")
  (make-package "ROBOSAPIENS_TOOL::CAMERA_BOX_DETECTION_CONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude Camera_Box_Detection_Confidence.msg.html


(defclass robosapiens_tool::Camera_Box_Detection_Confidence
  :super ros::object
  :slots (_camera_id _detection _confidence ))

(defmethod robosapiens_tool::Camera_Box_Detection_Confidence
  (:init
   (&key
    ((:camera_id __camera_id) "")
    ((:detection __detection) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _camera_id (string __camera_id))
   (setq _detection (round __detection))
   (setq _confidence (float __confidence))
   self)
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
  (:detection
   (&optional __detection)
   (if __detection (setq _detection __detection)) _detection)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string _camera_id
    4 (length _camera_id)
    ;; int32 _detection
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camera_id
       (write-long (length _camera_id) s) (princ _camera_id s)
     ;; int32 _detection
       (write-long _detection s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camera_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _detection
     (setq _detection (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robosapiens_tool::Camera_Box_Detection_Confidence :md5sum-) "c08e18ff46252dc459c88d05d53158ce")
(setf (get robosapiens_tool::Camera_Box_Detection_Confidence :datatype-) "robosapiens_tool/Camera_Box_Detection_Confidence")
(setf (get robosapiens_tool::Camera_Box_Detection_Confidence :definition-)
      "string camera_id

int32 detection

float32 confidence

")



(provide :robosapiens_tool/Camera_Box_Detection_Confidence "c08e18ff46252dc459c88d05d53158ce")


