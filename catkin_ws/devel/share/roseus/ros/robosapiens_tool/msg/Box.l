;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::Box)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'Box (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::BOX")
  (make-package "ROBOSAPIENS_TOOL::BOX"))

(in-package "ROS")
;;//! \htmlinclude Box.msg.html


(defclass robosapiens_tool::Box
  :super ros::object
  :slots (_top_left _bottom_right ))

(defmethod robosapiens_tool::Box
  (:init
   (&key
    ((:top_left __top_left) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bottom_right __bottom_right) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _top_left __top_left)
   (setq _bottom_right __bottom_right)
   self)
  (:top_left
   (&optional __top_left)
   (if __top_left (setq _top_left __top_left)) _top_left)
  (:bottom_right
   (&optional __bottom_right)
   (if __bottom_right (setq _bottom_right __bottom_right)) _bottom_right)
  (:serialization-length
   ()
   (+
    ;; float32[] _top_left
    (* 4    (length _top_left)) 4
    ;; float32[] _bottom_right
    (* 4    (length _bottom_right)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _top_left
     (write-long (length _top_left) s)
     (dotimes (i (length _top_left))
       (sys::poke (elt _top_left i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _bottom_right
     (write-long (length _bottom_right) s)
     (dotimes (i (length _bottom_right))
       (sys::poke (elt _bottom_right i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _top_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_left (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _top_left i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _bottom_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom_right (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bottom_right i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robosapiens_tool::Box :md5sum-) "2b9f4e3329747e348a5ae40cdd0c24ee")
(setf (get robosapiens_tool::Box :datatype-) "robosapiens_tool/Box")
(setf (get robosapiens_tool::Box :definition-)
      "

float32[] top_left # xmin,ymin

float32[] bottom_right # xmax, ymax 



")



(provide :robosapiens_tool/Box "2b9f4e3329747e348a5ae40cdd0c24ee")


