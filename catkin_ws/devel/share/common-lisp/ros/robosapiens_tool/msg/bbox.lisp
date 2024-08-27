; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude bbox.msg.html

(cl:defclass <bbox> (roslisp-msg-protocol:ros-message)
  ((bbox
    :reader bbox
    :initarg :bbox
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass bbox (<bbox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bbox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bbox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<bbox> is deprecated: use robosapiens_tool-msg:bbox instead.")))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:bbox-val is deprecated.  Use robosapiens_tool-msg:bbox instead.")
  (bbox m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bbox>) ostream)
  "Serializes a message object of type '<bbox>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bbox>) istream)
  "Deserializes a message object of type '<bbox>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bbox>)))
  "Returns string type for a message object of type '<bbox>"
  "robosapiens_tool/bbox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bbox)))
  "Returns string type for a message object of type 'bbox"
  "robosapiens_tool/bbox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bbox>)))
  "Returns md5sum for a message object of type '<bbox>"
  "74499d7e30e45661484dee816ec31e31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bbox)))
  "Returns md5sum for a message object of type 'bbox"
  "74499d7e30e45661484dee816ec31e31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bbox>)))
  "Returns full string definition for message of type '<bbox>"
  (cl:format cl:nil "float32[] bbox # xmin, ymin, xmax, ymax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bbox)))
  "Returns full string definition for message of type 'bbox"
  (cl:format cl:nil "float32[] bbox # xmin, ymin, xmax, ymax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bbox>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bbox>))
  "Converts a ROS message object to a list"
  (cl:list 'bbox
    (cl:cons ':bbox (bbox msg))
))
