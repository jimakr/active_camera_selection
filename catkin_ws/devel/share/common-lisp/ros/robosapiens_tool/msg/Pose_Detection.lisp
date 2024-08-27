; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude Pose_Detection.msg.html

(cl:defclass <Pose_Detection> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (detection
    :reader detection
    :initarg :detection
    :type cl:integer
    :initform 0))
)

(cl:defclass Pose_Detection (<Pose_Detection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose_Detection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose_Detection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<Pose_Detection> is deprecated: use robosapiens_tool-msg:Pose_Detection instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Pose_Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:confidence-val is deprecated.  Use robosapiens_tool-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'detection-val :lambda-list '(m))
(cl:defmethod detection-val ((m <Pose_Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:detection-val is deprecated.  Use robosapiens_tool-msg:detection instead.")
  (detection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose_Detection>) ostream)
  "Serializes a message object of type '<Pose_Detection>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'detection)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose_Detection>) istream)
  "Deserializes a message object of type '<Pose_Detection>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detection) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose_Detection>)))
  "Returns string type for a message object of type '<Pose_Detection>"
  "robosapiens_tool/Pose_Detection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose_Detection)))
  "Returns string type for a message object of type 'Pose_Detection"
  "robosapiens_tool/Pose_Detection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose_Detection>)))
  "Returns md5sum for a message object of type '<Pose_Detection>"
  "de333b98e0f13b5e641849ba0efa7eda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose_Detection)))
  "Returns md5sum for a message object of type 'Pose_Detection"
  "de333b98e0f13b5e641849ba0efa7eda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose_Detection>)))
  "Returns full string definition for message of type '<Pose_Detection>"
  (cl:format cl:nil "~%~%float32 confidence~%~%int32 detection~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose_Detection)))
  "Returns full string definition for message of type 'Pose_Detection"
  (cl:format cl:nil "~%~%float32 confidence~%~%int32 detection~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose_Detection>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose_Detection>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose_Detection
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':detection (detection msg))
))
