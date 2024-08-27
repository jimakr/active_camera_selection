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

class bbox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bbox = null;
    }
    else {
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bbox
    // Serialize message field [bbox]
    bufferOffset = _arraySerializer.float32(obj.bbox, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bbox
    let len;
    let data = new bbox(null);
    // Deserialize message field [bbox]
    data.bbox = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.bbox.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/bbox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74499d7e30e45661484dee816ec31e31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] bbox # xmin, ymin, xmax, ymax
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bbox(null);
    if (msg.bbox !== undefined) {
      resolved.bbox = msg.bbox;
    }
    else {
      resolved.bbox = []
    }

    return resolved;
    }
};

module.exports = bbox;
