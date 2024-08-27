; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude Cameras_id_Confidence.msg.html

(cl:defclass <Cameras_id_Confidence> (roslisp-msg-protocol:ros-message)
  ((camera1_conf
    :reader camera1_conf
    :initarg :camera1_conf
    :type cl:float
    :initform 0.0)
   (camera2_conf
    :reader camera2_conf
    :initarg :camera2_conf
    :type cl:float
    :initform 0.0)
   (camera3_conf
    :reader camera3_conf
    :initarg :camera3_conf
    :type cl:float
    :initform 0.0)
   (camera4_conf
    :reader camera4_conf
    :initarg :camera4_conf
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cameras_id_Confidence (<Cameras_id_Confidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cameras_id_Confidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cameras_id_Confidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<Cameras_id_Confidence> is deprecated: use robosapiens_tool-msg:Cameras_id_Confidence instead.")))

(cl:ensure-generic-function 'camera1_conf-val :lambda-list '(m))
(cl:defmethod camera1_conf-val ((m <Cameras_id_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera1_conf-val is deprecated.  Use robosapiens_tool-msg:camera1_conf instead.")
  (camera1_conf m))

(cl:ensure-generic-function 'camera2_conf-val :lambda-list '(m))
(cl:defmethod camera2_conf-val ((m <Cameras_id_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera2_conf-val is deprecated.  Use robosapiens_tool-msg:camera2_conf instead.")
  (camera2_conf m))

(cl:ensure-generic-function 'camera3_conf-val :lambda-list '(m))
(cl:defmethod camera3_conf-val ((m <Cameras_id_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera3_conf-val is deprecated.  Use robosapiens_tool-msg:camera3_conf instead.")
  (camera3_conf m))

(cl:ensure-generic-function 'camera4_conf-val :lambda-list '(m))
(cl:defmethod camera4_conf-val ((m <Cameras_id_Confidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:camera4_conf-val is deprecated.  Use robosapiens_tool-msg:camera4_conf instead.")
  (camera4_conf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cameras_id_Confidence>) ostream)
  "Serializes a message object of type '<Cameras_id_Confidence>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'camera1_conf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'camera2_conf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'camera3_conf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'camera4_conf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cameras_id_Confidence>) istream)
  "Deserializes a message object of type '<Cameras_id_Confidence>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'camera1_conf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'camera2_conf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'camera3_conf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'camera4_conf) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cameras_id_Confidence>)))
  "Returns string type for a message object of type '<Cameras_id_Confidence>"
  "robosapiens_tool/Cameras_id_Confidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cameras_id_Confidence)))
  "Returns string type for a message object of type 'Cameras_id_Confidence"
  "robosapiens_tool/Cameras_id_Confidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cameras_id_Confidence>)))
  "Returns md5sum for a message object of type '<Cameras_id_Confidence>"
  "c0d4772d7cc3a8c1b69088d5e653da29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cameras_id_Confidence)))
  "Returns md5sum for a message object of type 'Cameras_id_Confidence"
  "c0d4772d7cc3a8c1b69088d5e653da29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cameras_id_Confidence>)))
  "Returns full string definition for message of type '<Cameras_id_Confidence>"
  (cl:format cl:nil "float32 camera1_conf~%~%float32 camera2_conf~%~%float32 camera3_conf~%~%float32 camera4_conf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cameras_id_Confidence)))
  "Returns full string definition for message of type 'Cameras_id_Confidence"
  (cl:format cl:nil "float32 camera1_conf~%~%float32 camera2_conf~%~%float32 camera3_conf~%~%float32 camera4_conf~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cameras_id_Confidence>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cameras_id_Confidence>))
  "Converts a ROS message object to a list"
  (cl:list 'Cameras_id_Confidence
    (cl:cons ':camera1_conf (camera1_conf msg))
    (cl:cons ':camera2_conf (camera2_conf msg))
    (cl:cons ':camera3_conf (camera3_conf msg))
    (cl:cons ':camera4_conf (camera4_conf msg))
))
