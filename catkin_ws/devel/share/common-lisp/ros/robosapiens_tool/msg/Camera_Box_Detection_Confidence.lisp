; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude Camera_Box_Detection_Confidence.msg.html

(cl:defclass <Camera_Box_Detection_Confidence> (roslisp-msg-protocol:ros-message)
  ((camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:string
    :initform "")
   (detection
    :reader detection
    :initarg :detection
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Camera_Box_Detection_Confidence (<Camera_Box_Detection_Confidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Camera_Box_Detection_Confidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Camera_Box_Detection_Confidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<Camera_Box_Detection_Confidence> is deprecated: use robosapiens_tool-msg:Camera_Box_Detection_Confidence instead.")))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <Camera_Box_Detection_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera_id-val is deprecated.  Use robosapiens_tool-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'detection-val :lambda-list '(m))
(cl:defmethod detection-val ((m <Camera_Box_Detection_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:detection-val is deprecated.  Use robosapiens_tool-msg:detection instead.")
  (detection m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Camera_Box_Detection_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:confidence-val is deprecated.  Use robosapiens_tool-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Camera_Box_Detection_Confidence>) ostream)
  "Serializes a message object of type '<Camera_Box_Detection_Confidence>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_id))
  (cl:let* ((signed (cl:slot-value msg 'detection)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Camera_Box_Detection_Confidence>) istream)
  "Deserializes a message object of type '<Camera_Box_Detection_Confidence>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detection) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Camera_Box_Detection_Confidence>)))
  "Returns string type for a message object of type '<Camera_Box_Detection_Confidence>"
  "robosapiens_tool/Camera_Box_Detection_Confidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Camera_Box_Detection_Confidence)))
  "Returns string type for a message object of type 'Camera_Box_Detection_Confidence"
  "robosapiens_tool/Camera_Box_Detection_Confidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Camera_Box_Detection_Confidence>)))
  "Returns md5sum for a message object of type '<Camera_Box_Detection_Confidence>"
  "c08e18ff46252dc459c88d05d53158ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Camera_Box_Detection_Confidence)))
  "Returns md5sum for a message object of type 'Camera_Box_Detection_Confidence"
  "c08e18ff46252dc459c88d05d53158ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Camera_Box_Detection_Confidence>)))
  "Returns full string definition for message of type '<Camera_Box_Detection_Confidence>"
  (cl:format cl:nil "string camera_id~%~%int32 detection~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Camera_Box_Detection_Confidence)))
  "Returns full string definition for message of type 'Camera_Box_Detection_Confidence"
  (cl:format cl:nil "string camera_id~%~%int32 detection~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Camera_Box_Detection_Confidence>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Camera_Box_Detection_Confidence>))
  "Converts a ROS message object to a list"
  (cl:list 'Camera_Box_Detection_Confidence
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':detection (detection msg))
    (cl:cons ':confidence (confidence msg))
))
