; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude Pose2DKeypoint.msg.html

(cl:defclass <Pose2DKeypoint> (roslisp-msg-protocol:ros-message)
  ((kpt_name
    :reader kpt_name
    :initarg :kpt_name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Pose2DKeypoint (<Pose2DKeypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose2DKeypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose2DKeypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<Pose2DKeypoint> is deprecated: use robosapiens_tool-msg:Pose2DKeypoint instead.")))

(cl:ensure-generic-function 'kpt_name-val :lambda-list '(m))
(cl:defmethod kpt_name-val ((m <Pose2DKeypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:kpt_name-val is deprecated.  Use robosapiens_tool-msg:kpt_name instead.")
  (kpt_name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Pose2DKeypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:x-val is deprecated.  Use robosapiens_tool-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Pose2DKeypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:y-val is deprecated.  Use robosapiens_tool-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose2DKeypoint>) ostream)
  "Serializes a message object of type '<Pose2DKeypoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kpt_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kpt_name))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose2DKeypoint>) istream)
  "Deserializes a message object of type '<Pose2DKeypoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kpt_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kpt_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose2DKeypoint>)))
  "Returns string type for a message object of type '<Pose2DKeypoint>"
  "robosapiens_tool/Pose2DKeypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose2DKeypoint)))
  "Returns string type for a message object of type 'Pose2DKeypoint"
  "robosapiens_tool/Pose2DKeypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose2DKeypoint>)))
  "Returns md5sum for a message object of type '<Pose2DKeypoint>"
  "6ce75e74f73663ed82a3235764bc7edf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose2DKeypoint)))
  "Returns md5sum for a message object of type 'Pose2DKeypoint"
  "6ce75e74f73663ed82a3235764bc7edf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose2DKeypoint>)))
  "Returns full string definition for message of type '<Pose2DKeypoint>"
  (cl:format cl:nil "# This message contains all relevant information for a human pose 2D keypoint~%~%# The kpt_name according to https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch~%~%string kpt_name~%~%# x and y pixel position on the input image, (0, 0) is top-left corner of image~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose2DKeypoint)))
  "Returns full string definition for message of type 'Pose2DKeypoint"
  (cl:format cl:nil "# This message contains all relevant information for a human pose 2D keypoint~%~%# The kpt_name according to https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch~%~%string kpt_name~%~%# x and y pixel position on the input image, (0, 0) is top-left corner of image~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose2DKeypoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'kpt_name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose2DKeypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose2DKeypoint
    (cl:cons ':kpt_name (kpt_name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
