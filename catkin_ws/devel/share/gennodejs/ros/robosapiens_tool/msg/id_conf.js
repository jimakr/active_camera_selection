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

class id_conf {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_id = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = '';
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
    // Serializes a message object of type id_conf
    // Serialize message field [camera_id]
    bufferOffset = _serializer.string(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type id_conf
    let len;
    let data = new id_conf(null);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.camera_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/id_conf';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcf7cc8676447a505ed6b1be2b6b4548';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string camera_id
    
    
    float32 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new id_conf(null);
    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = ''
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

module.exports = id_conf;
