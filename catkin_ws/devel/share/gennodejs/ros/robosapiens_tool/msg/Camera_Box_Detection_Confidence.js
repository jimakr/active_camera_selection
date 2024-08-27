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

class Camera_Box_Detection_Confidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_id = null;
      this.detection = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = '';
      }
      if (initObj.hasOwnProperty('detection')) {
        this.detection = initObj.detection
      }
      else {
        this.detection = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Camera_Box_Detection_Confidence
    // Serialize message field [camera_id]
    bufferOffset = _serializer.string(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [detection]
    bufferOffset = _serializer.int32(obj.detection, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Camera_Box_Detection_Confidence
    let len;
    let data = new Camera_Box_Detection_Confidence(null);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detection]
    data.detection = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.camera_id);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/Camera_Box_Detection_Confidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c08e18ff46252dc459c88d05d53158ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string camera_id
    
    int32 detection
    
    float32 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Camera_Box_Detection_Confidence(null);
    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = ''
    }

    if (msg.detection !== undefined) {
      resolved.detection = msg.detection;
    }
    else {
      resolved.detection = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = Camera_Box_Detection_Confidence;
