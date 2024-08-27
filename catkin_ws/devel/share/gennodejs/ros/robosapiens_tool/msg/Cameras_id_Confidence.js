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

class Cameras_id_Confidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera1_conf = null;
      this.camera2_conf = null;
      this.camera3_conf = null;
      this.camera4_conf = null;
    }
    else {
      if (initObj.hasOwnProperty('camera1_conf')) {
        this.camera1_conf = initObj.camera1_conf
      }
      else {
        this.camera1_conf = 0.0;
      }
      if (initObj.hasOwnProperty('camera2_conf')) {
        this.camera2_conf = initObj.camera2_conf
      }
      else {
        this.camera2_conf = 0.0;
      }
      if (initObj.hasOwnProperty('camera3_conf')) {
        this.camera3_conf = initObj.camera3_conf
      }
      else {
        this.camera3_conf = 0.0;
      }
      if (initObj.hasOwnProperty('camera4_conf')) {
        this.camera4_conf = initObj.camera4_conf
      }
      else {
        this.camera4_conf = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cameras_id_Confidence
    // Serialize message field [camera1_conf]
    bufferOffset = _serializer.float32(obj.camera1_conf, buffer, bufferOffset);
    // Serialize message field [camera2_conf]
    bufferOffset = _serializer.float32(obj.camera2_conf, buffer, bufferOffset);
    // Serialize message field [camera3_conf]
    bufferOffset = _serializer.float32(obj.camera3_conf, buffer, bufferOffset);
    // Serialize message field [camera4_conf]
    bufferOffset = _serializer.float32(obj.camera4_conf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cameras_id_Confidence
    let len;
    let data = new Cameras_id_Confidence(null);
    // Deserialize message field [camera1_conf]
    data.camera1_conf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera2_conf]
    data.camera2_conf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera3_conf]
    data.camera3_conf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera4_conf]
    data.camera4_conf = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/Cameras_id_Confidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0d4772d7cc3a8c1b69088d5e653da29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 camera1_conf
    
    float32 camera2_conf
    
    float32 camera3_conf
    
    float32 camera4_conf
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cameras_id_Confidence(null);
    if (msg.camera1_conf !== undefined) {
      resolved.camera1_conf = msg.camera1_conf;
    }
    else {
      resolved.camera1_conf = 0.0
    }

    if (msg.camera2_conf !== undefined) {
      resolved.camera2_conf = msg.camera2_conf;
    }
    else {
      resolved.camera2_conf = 0.0
    }

    if (msg.camera3_conf !== undefined) {
      resolved.camera3_conf = msg.camera3_conf;
    }
    else {
      resolved.camera3_conf = 0.0
    }

    if (msg.camera4_conf !== undefined) {
      resolved.camera4_conf = msg.camera4_conf;
    }
    else {
      resolved.camera4_conf = 0.0
    }

    return resolved;
    }
};

module.exports = Cameras_id_Confidence;
