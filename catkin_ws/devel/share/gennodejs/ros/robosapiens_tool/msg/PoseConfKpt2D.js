// Auto-generated. Do not edit!

// (in-package robosapiens_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose2DKeypoint = require('./Pose2DKeypoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PoseConfKpt2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose_id = null;
      this.conf = null;
      this.keypoint_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose_id')) {
        this.pose_id = initObj.pose_id
      }
      else {
        this.pose_id = 0;
      }
      if (initObj.hasOwnProperty('conf')) {
        this.conf = initObj.conf
      }
      else {
        this.conf = 0.0;
      }
      if (initObj.hasOwnProperty('keypoint_list')) {
        this.keypoint_list = initObj.keypoint_list
      }
      else {
        this.keypoint_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseConfKpt2D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose_id]
    bufferOffset = _serializer.int32(obj.pose_id, buffer, bufferOffset);
    // Serialize message field [conf]
    bufferOffset = _serializer.float32(obj.conf, buffer, bufferOffset);
    // Serialize message field [keypoint_list]
    // Serialize the length for message field [keypoint_list]
    bufferOffset = _serializer.uint32(obj.keypoint_list.length, buffer, bufferOffset);
    obj.keypoint_list.forEach((val) => {
      bufferOffset = Pose2DKeypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseConfKpt2D
    let len;
    let data = new PoseConfKpt2D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_id]
    data.pose_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [conf]
    data.conf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keypoint_list]
    // Deserialize array length for message field [keypoint_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoint_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoint_list[i] = Pose2DKeypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.keypoint_list.forEach((val) => {
      length += Pose2DKeypoint.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/PoseConfKpt2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88f7162365f7e82118b9fd3fc8f9ae3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents a full human pose 2D as a list of keypoints
    
    Header header
    
    # The id of the pose
    int32 pose_id
    
    # The pose detection confidence of the model
    float32 conf
    
    # A list of a human 2D pose keypoints
    Pose2DKeypoint[] keypoint_list
    
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
    
    ================================================================================
    MSG: robosapiens_tool/Pose2DKeypoint
    # This message contains all relevant information for a human pose 2D keypoint
    
    # The kpt_name according to https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch
    
    string kpt_name
    
    # x and y pixel position on the input image, (0, 0) is top-left corner of image
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseConfKpt2D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose_id !== undefined) {
      resolved.pose_id = msg.pose_id;
    }
    else {
      resolved.pose_id = 0
    }

    if (msg.conf !== undefined) {
      resolved.conf = msg.conf;
    }
    else {
      resolved.conf = 0.0
    }

    if (msg.keypoint_list !== undefined) {
      resolved.keypoint_list = new Array(msg.keypoint_list.length);
      for (let i = 0; i < resolved.keypoint_list.length; ++i) {
        resolved.keypoint_list[i] = Pose2DKeypoint.Resolve(msg.keypoint_list[i]);
      }
    }
    else {
      resolved.keypoint_list = []
    }

    return resolved;
    }
};

module.exports = PoseConfKpt2D;
