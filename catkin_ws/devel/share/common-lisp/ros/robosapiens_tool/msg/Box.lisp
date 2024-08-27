; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude Box.msg.html

(cl:defclass <Box> (roslisp-msg-protocol:ros-message)
  ((top_left
    :reader top_left
    :initarg :top_left
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (bottom_right
    :reader bottom_right
    :initarg :bottom_right
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Box (<Box>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Box>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Box)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<Box> is deprecated: use robosapiens_tool-msg:Box instead.")))

(cl:ensure-generic-function 'top_left-val :lambda-list '(m))
(cl:defmethod top_left-val ((m <Box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:top_left-val is deprecated.  Use robosapiens_tool-msg:top_left instead.")
  (top_left m))

(cl:ensure-generic-function 'bottom_right-val :lambda-list '(m))
(cl:defmethod bottom_right-val ((m <Box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:bottom_right-val is deprecated.  Use robosapiens_tool-msg:bottom_right instead.")
  (bottom_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Box>) ostream)
  "Serializes a message object of type '<Box>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'top_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'top_left))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bottom_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bottom_right))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Box>) istream)
  "Deserializes a message object of type '<Box>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'top_left) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'top_left)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bottom_right) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bottom_right)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Box>)))
  "Returns string type for a message object of type '<Box>"
  "robosapiens_tool/Box")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Box)))
  "Returns string type for a message object of type 'Box"
  "robosapiens_tool/Box")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Box>)))
  "Returns md5sum for a message object of type '<Box>"
  "2b9f4e3329747e348a5ae40cdd0c24ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Box)))
  "Returns md5sum for a message object of type 'Box"
  "2b9f4e3329747e348a5ae40cdd0c24ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Box>)))
  "Returns full string definition for message of type '<Box>"
  (cl:format cl:nil "~%~%float32[] top_left # xmin,ymin~%~%float32[] bottom_right # xmax, ymax ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Box)))
  "Returns full string definition for message of type 'Box"
  (cl:format cl:nil "~%~%float32[] top_left # xmin,ymin~%~%float32[] bottom_right # xmax, ymax ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Box>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'top_left) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bottom_right) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Box>))
  "Converts a ROS message object to a list"
  (cl:list 'Box
    (cl:cons ':top_left (top_left msg))
    (cl:cons ':bottom_right (bottom_right msg))
))
