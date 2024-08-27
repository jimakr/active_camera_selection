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

class Box {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.top_left = null;
      this.bottom_right = null;
    }
    else {
      if (initObj.hasOwnProperty('top_left')) {
        this.top_left = initObj.top_left
      }
      else {
        this.top_left = [];
      }
      if (initObj.hasOwnProperty('bottom_right')) {
        this.bottom_right = initObj.bottom_right
      }
      else {
        this.bottom_right = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Box
    // Serialize message field [top_left]
    bufferOffset = _arraySerializer.float32(obj.top_left, buffer, bufferOffset, null);
    // Serialize message field [bottom_right]
    bufferOffset = _arraySerializer.float32(obj.bottom_right, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Box
    let len;
    let data = new Box(null);
    // Deserialize message field [top_left]
    data.top_left = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [bottom_right]
    data.bottom_right = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.top_left.length;
    length += 4 * object.bottom_right.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/Box';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b9f4e3329747e348a5ae40cdd0c24ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32[] top_left # xmin,ymin
    
    float32[] bottom_right # xmax, ymax 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Box(null);
    if (msg.top_left !== undefined) {
      resolved.top_left = msg.top_left;
    }
    else {
      resolved.top_left = []
    }

    if (msg.bottom_right !== undefined) {
      resolved.bottom_right = msg.bottom_right;
    }
    else {
      resolved.bottom_right = []
    }

    return resolved;
    }
};

module.exports = Box;
