; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude img_bbox_heatmap.msg.html

(cl:defclass <img_bbox_heatmap> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (bbox
    :reader bbox
    :initarg :bbox
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (heatmap
    :reader heatmap
    :initarg :heatmap
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass img_bbox_heatmap (<img_bbox_heatmap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <img_bbox_heatmap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'img_bbox_heatmap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<img_bbox_heatmap> is deprecated: use robosapiens_tool-msg:img_bbox_heatmap instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <img_bbox_heatmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:image-val is deprecated.  Use robosapiens_tool-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <img_bbox_heatmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:bbox-val is deprecated.  Use robosapiens_tool-msg:bbox instead.")
  (bbox m))

(cl:ensure-generic-function 'heatmap-val :lambda-list '(m))
(cl:defmethod heatmap-val ((m <img_bbox_heatmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:heatmap-val is deprecated.  Use robosapiens_tool-msg:heatmap instead.")
  (heatmap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <img_bbox_heatmap>) ostream)
  "Serializes a message object of type '<img_bbox_heatmap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbox))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bbox))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heatmap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <img_bbox_heatmap>) istream)
  "Deserializes a message object of type '<img_bbox_heatmap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbox) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbox)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heatmap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<img_bbox_heatmap>)))
  "Returns string type for a message object of type '<img_bbox_heatmap>"
  "robosapiens_tool/img_bbox_heatmap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'img_bbox_heatmap)))
  "Returns string type for a message object of type 'img_bbox_heatmap"
  "robosapiens_tool/img_bbox_heatmap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<img_bbox_heatmap>)))
  "Returns md5sum for a message object of type '<img_bbox_heatmap>"
  "293be47367cd390a527fa16826780e8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'img_bbox_heatmap)))
  "Returns md5sum for a message object of type 'img_bbox_heatmap"
  "293be47367cd390a527fa16826780e8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<img_bbox_heatmap>)))
  "Returns full string definition for message of type '<img_bbox_heatmap>"
  (cl:format cl:nil "~%sensor_msgs/Image image~%float32[] bbox # xmin, xmax, ymin, ymax~%sensor_msgs/Image heatmap~%~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'img_bbox_heatmap)))
  "Returns full string definition for message of type 'img_bbox_heatmap"
  (cl:format cl:nil "~%sensor_msgs/Image image~%float32[] bbox # xmin, xmax, ymin, ymax~%sensor_msgs/Image heatmap~%~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <img_bbox_heatmap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heatmap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <img_bbox_heatmap>))
  "Converts a ROS message object to a list"
  (cl:list 'img_bbox_heatmap
    (cl:cons ':image (image msg))
    (cl:cons ':bbox (bbox msg))
    (cl:cons ':heatmap (heatmap msg))
))
