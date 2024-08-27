// Auto-generated. Do not edit!

// (in-package robosapiens_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pose_Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confidence = null;
      this.detection = null;
    }
    else {
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('detection')) {
        this.detection = initObj.detection
      }
      else {
        this.detection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose_Detection
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [detection]
    bufferOffset = _serializer.int32(obj.detection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose_Detection
    let len;
    let data = new Pose_Detection(null);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detection]
    data.detection = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/Pose_Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de333b98e0f13b5e641849ba0efa7eda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32 confidence
    
    int32 detection
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose_Detection(null);
    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.detection !== undefined) {
      resolved.detection = msg.detection;
    }
    else {
      resolved.detection = 0
    }

    return resolved;
    }
};

module.exports = Pose_Detection;
