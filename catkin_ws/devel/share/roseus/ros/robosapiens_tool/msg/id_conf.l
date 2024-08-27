;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::id_conf)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'id_conf (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::ID_CONF")
  (make-package "ROBOSAPIENS_TOOL::ID_CONF"))

(in-package "ROS")
;;//! \htmlinclude id_conf.msg.html


(defclass robosapiens_tool::id_conf
  :super ros::object
  :slots (_camera_id _confidence ))

(defmethod robosapiens_tool::id_conf
  (:init
   (&key
    ((:camera_id __camera_id) "")
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _camera_id (string __camera_id))
   (setq _confidence (float __confidence))
   self)
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string _camera_id
    4 (length _camera_id)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camera_id
       (write-long (length _camera_id) s) (princ _camera_id s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camera_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robosapiens_tool::id_conf :md5sum-) "dcf7cc8676447a505ed6b1be2b6b4548")
(setf (get robosapiens_tool::id_conf :datatype-) "robosapiens_tool/id_conf")
(setf (get robosapiens_tool::id_conf :definition-)
      "string camera_id


float32 confidence

")



(provide :robosapiens_tool/id_conf "dcf7cc8676447a505ed6b1be2b6b4548")


