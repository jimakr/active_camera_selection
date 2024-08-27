; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude id_conf.msg.html

(cl:defclass <id_conf> (roslisp-msg-protocol:ros-message)
  ((camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass id_conf (<id_conf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <id_conf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'id_conf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<id_conf> is deprecated: use robosapiens_tool-msg:id_conf instead.")))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <id_conf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera_id-val is deprecated.  Use robosapiens_tool-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <id_conf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:confidence-val is deprecated.  Use robosapiens_tool-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <id_conf>) ostream)
  "Serializes a message object of type '<id_conf>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <id_conf>) istream)
  "Deserializes a message object of type '<id_conf>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<id_conf>)))
  "Returns string type for a message object of type '<id_conf>"
  "robosapiens_tool/id_conf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'id_conf)))
  "Returns string type for a message object of type 'id_conf"
  "robosapiens_tool/id_conf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<id_conf>)))
  "Returns md5sum for a message object of type '<id_conf>"
  "dcf7cc8676447a505ed6b1be2b6b4548")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'id_conf)))
  "Returns md5sum for a message object of type 'id_conf"
  "dcf7cc8676447a505ed6b1be2b6b4548")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<id_conf>)))
  "Returns full string definition for message of type '<id_conf>"
  (cl:format cl:nil "string camera_id~%~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'id_conf)))
  "Returns full string definition for message of type 'id_conf"
  (cl:format cl:nil "string camera_id~%~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <id_conf>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <id_conf>))
  "Converts a ROS message object to a list"
  (cl:list 'id_conf
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':confidence (confidence msg))
))
