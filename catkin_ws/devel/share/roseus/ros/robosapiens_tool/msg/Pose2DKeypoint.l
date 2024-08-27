;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::Pose2DKeypoint)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'Pose2DKeypoint (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::POSE2DKEYPOINT")
  (make-package "ROBOSAPIENS_TOOL::POSE2DKEYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Pose2DKeypoint.msg.html


(defclass robosapiens_tool::Pose2DKeypoint
  :super ros::object
  :slots (_kpt_name _x _y ))

(defmethod robosapiens_tool::Pose2DKeypoint
  (:init
   (&key
    ((:kpt_name __kpt_name) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _kpt_name (string __kpt_name))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:kpt_name
   (&optional __kpt_name)
   (if __kpt_name (setq _kpt_name __kpt_name)) _kpt_name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _kpt_name
    4 (length _kpt_name)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _kpt_name
       (write-long (length _kpt_name) s) (princ _kpt_name s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _kpt_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kpt_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robosapiens_tool::Pose2DKeypoint :md5sum-) "6ce75e74f73663ed82a3235764bc7edf")
(setf (get robosapiens_tool::Pose2DKeypoint :datatype-) "robosapiens_tool/Pose2DKeypoint")
(setf (get robosapiens_tool::Pose2DKeypoint :definition-)
      "# This message contains all relevant information for a human pose 2D keypoint

# The kpt_name according to https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch

string kpt_name

# x and y pixel position on the input image, (0, 0) is top-left corner of image
int32 x
int32 y

")



(provide :robosapiens_tool/Pose2DKeypoint "6ce75e74f73663ed82a3235764bc7edf")


