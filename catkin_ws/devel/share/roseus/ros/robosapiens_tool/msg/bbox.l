;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::bbox)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'bbox (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::BBOX")
  (make-package "ROBOSAPIENS_TOOL::BBOX"))

(in-package "ROS")
;;//! \htmlinclude bbox.msg.html


(defclass robosapiens_tool::bbox
  :super ros::object
  :slots (_bbox ))

(defmethod robosapiens_tool::bbox
  (:init
   (&key
    ((:bbox __bbox) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _bbox __bbox)
   self)
  (:bbox
   (&optional __bbox)
   (if __bbox (setq _bbox __bbox)) _bbox)
  (:serialization-length
   ()
   (+
    ;; float32[] _bbox
    (* 4    (length _bbox)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _bbox
     (write-long (length _bbox) s)
     (dotimes (i (length _bbox))
       (sys::poke (elt _bbox i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _bbox
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbox (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bbox i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robosapiens_tool::bbox :md5sum-) "74499d7e30e45661484dee816ec31e31")
(setf (get robosapiens_tool::bbox :datatype-) "robosapiens_tool/bbox")
(setf (get robosapiens_tool::bbox :definition-)
      "float32[] bbox # xmin, ymin, xmax, ymax

")



(provide :robosapiens_tool/bbox "74499d7e30e45661484dee816ec31e31")


