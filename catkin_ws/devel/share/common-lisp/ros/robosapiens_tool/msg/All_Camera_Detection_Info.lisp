; Auto-generated. Do not edit!


(cl:in-package robosapiens_tool-msg)


;//! \htmlinclude All_Camera_Detection_Info.msg.html

(cl:defclass <All_Camera_Detection_Info> (roslisp-msg-protocol:ros-message)
  ((all_cam_data_list
    :reader all_cam_data_list
    :initarg :all_cam_data_list
    :type (cl:vector robosapiens_tool-msg:Camera_Box_Detection_Confidence)
   :initform (cl:make-array 0 :element-type 'robosapiens_tool-msg:Camera_Box_Detection_Confidence :initial-element (cl:make-instance 'robosapiens_tool-msg:Camera_Box_Detection_Confidence))))
)

(cl:defclass All_Camera_Detection_Info (<All_Camera_Detection_Info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <All_Camera_Detection_Info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'All_Camera_Detection_Info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosapiens_tool-msg:<All_Camera_Detection_Info> is deprecated: use robosapiens_tool-msg:All_Camera_Detection_Info instead.")))

(cl:ensure-generic-function 'all_cam_data_list-val :lambda-list '(m))
(cl:defmethod all_cam_data_list-val ((m <All_Camera_Detection_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosapiens_tool-msg:all_cam_data_list-val is deprecated.  Use robosapiens_tool-msg:all_cam_data_list instead.")
  (all_cam_data_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <All_Camera_Detection_Info>) ostream)
  "Serializes a message object of type '<All_Camera_Detection_Info>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'all_cam_data_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'all_cam_data_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <All_Camera_Detection_Info>) istream)
  "Deserializes a message object of type '<All_Camera_Detection_Info>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'all_cam_data_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'all_cam_data_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robosapiens_tool-msg:Camera_Box_Detection_Confidence))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<All_Camera_Detection_Info>)))
  "Returns string type for a message object of type '<All_Camera_Detection_Info>"
  "robosapiens_tool/All_Camera_Detection_Info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'All_Camera_Detection_Info)))
  "Returns string type for a message object of type 'All_Camera_Detection_Info"
  "robosapiens_tool/All_Camera_Detection_Info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<All_Camera_Detection_Info>)))
  "Returns md5sum for a message object of type '<All_Camera_Detection_Info>"
  "b20c90fe57f1708af683b629d64b5766")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'All_Camera_Detection_Info)))
  "Returns md5sum for a message object of type 'All_Camera_Detection_Info"
  "b20c90fe57f1708af683b629d64b5766")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<All_Camera_Detection_Info>)))
  "Returns full string definition for message of type '<All_Camera_Detection_Info>"
  (cl:format cl:nil "Camera_Box_Detection_Confidence[] all_cam_data_list~%~%================================================================================~%MSG: robosapiens_tool/Camera_Box_Detection_Confidence~%string camera_id~%~%int32 detection~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'All_Camera_Detection_Info)))
  "Returns full string definition for message of type 'All_Camera_Detection_Info"
  (cl:format cl:nil "Camera_Box_Detection_Confidence[] all_cam_data_list~%~%================================================================================~%MSG: robosapiens_tool/Camera_Box_Detection_Confidence~%string camera_id~%~%int32 detection~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <All_Camera_Detection_Info>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'all_cam_data_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <All_Camera_Detection_Info>))
  "Converts a ROS message object to a list"
  (cl:list 'All_Camera_Detection_Info
    (cl:cons ':all_cam_data_list (all_cam_data_list msg))
))
