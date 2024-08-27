;; Auto-generated. Do not edit!


(when (boundp 'robosapiens_tool::img_bbox_heatmap)
  (if (not (find-package "ROBOSAPIENS_TOOL"))
    (make-package "ROBOSAPIENS_TOOL"))
  (shadow 'img_bbox_heatmap (find-package "ROBOSAPIENS_TOOL")))
(unless (find-package "ROBOSAPIENS_TOOL::IMG_BBOX_HEATMAP")
  (make-package "ROBOSAPIENS_TOOL::IMG_BBOX_HEATMAP"))

(in-package "ROS")
;;//! \htmlinclude img_bbox_heatmap.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass robosapiens_tool::img_bbox_heatmap
  :super ros::object
  :slots (_image _bbox _heatmap ))

(defmethod robosapiens_tool::img_bbox_heatmap
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:bbox __bbox) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heatmap __heatmap) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   (setq _bbox __bbox)
   (setq _heatmap __heatmap)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:bbox
   (&optional __bbox)
   (if __bbox (setq _bbox __bbox)) _bbox)
  (:heatmap
   (&rest __heatmap)
   (if (keywordp (car __heatmap))
       (send* _heatmap __heatmap)
     (progn
       (if __heatmap (setq _heatmap (car __heatmap)))
       _heatmap)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; float32[] _bbox
    (* 4    (length _bbox)) 4
    ;; sensor_msgs/Image _heatmap
    (send _heatmap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; float32[] _bbox
     (write-long (length _bbox) s)
     (dotimes (i (length _bbox))
       (sys::poke (elt _bbox i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/Image _heatmap
       (send _heatmap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; float32[] _bbox
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbox (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bbox i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image _heatmap
     (send _heatmap :deserialize buf ptr-) (incf ptr- (send _heatmap :serialization-length))
   ;;
   self)
  )

(setf (get robosapiens_tool::img_bbox_heatmap :md5sum-) "293be47367cd390a527fa16826780e8b")
(setf (get robosapiens_tool::img_bbox_heatmap :datatype-) "robosapiens_tool/img_bbox_heatmap")
(setf (get robosapiens_tool::img_bbox_heatmap :definition-)
      "
sensor_msgs/Image image
float32[] bbox # xmin, xmax, ymin, ymax
sensor_msgs/Image heatmap



================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :robosapiens_tool/img_bbox_heatmap "293be47367cd390a527fa16826780e8b")


