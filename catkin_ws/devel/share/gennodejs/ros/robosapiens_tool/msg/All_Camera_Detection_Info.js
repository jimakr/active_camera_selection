// Auto-generated. Do not edit!

// (in-package robosapiens_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Camera_Box_Detection_Confidence = require('./Camera_Box_Detection_Confidence.js');

//-----------------------------------------------------------

class All_Camera_Detection_Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.all_cam_data_list = null;
    }
    else {
      if (initObj.hasOwnProperty('all_cam_data_list')) {
        this.all_cam_data_list = initObj.all_cam_data_list
      }
      else {
        this.all_cam_data_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type All_Camera_Detection_Info
    // Serialize message field [all_cam_data_list]
    // Serialize the length for message field [all_cam_data_list]
    bufferOffset = _serializer.uint32(obj.all_cam_data_list.length, buffer, bufferOffset);
    obj.all_cam_data_list.forEach((val) => {
      bufferOffset = Camera_Box_Detection_Confidence.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type All_Camera_Detection_Info
    let len;
    let data = new All_Camera_Detection_Info(null);
    // Deserialize message field [all_cam_data_list]
    // Deserialize array length for message field [all_cam_data_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.all_cam_data_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.all_cam_data_list[i] = Camera_Box_Detection_Confidence.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.all_cam_data_list.forEach((val) => {
      length += Camera_Box_Detection_Confidence.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/All_Camera_Detection_Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b20c90fe57f1708af683b629d64b5766';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Camera_Box_Detection_Confidence[] all_cam_data_list
    
    ================================================================================
    MSG: robosapiens_tool/Camera_Box_Detection_Confidence
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
    const resolved = new All_Camera_Detection_Info(null);
    if (msg.all_cam_data_list !== undefined) {
      resolved.all_cam_data_list = new Array(msg.all_cam_data_list.length);
      for (let i = 0; i < resolved.all_cam_data_list.length; ++i) {
        resolved.all_cam_data_list[i] = Camera_Box_Detection_Confidence.Resolve(msg.all_cam_data_list[i]);
      }
    }
    else {
      resolved.all_cam_data_list = []
    }

    return resolved;
    }
};

module.exports = All_Camera_Detection_Info;
