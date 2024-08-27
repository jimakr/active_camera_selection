// Auto-generated. Do not edit!

// (in-package robosapiens_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class img_bbox_heatmap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.bbox = null;
      this.heatmap = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = [];
      }
      if (initObj.hasOwnProperty('heatmap')) {
        this.heatmap = initObj.heatmap
      }
      else {
        this.heatmap = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type img_bbox_heatmap
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [bbox]
    bufferOffset = _arraySerializer.float32(obj.bbox, buffer, bufferOffset, null);
    // Serialize message field [heatmap]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.heatmap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type img_bbox_heatmap
    let len;
    let data = new img_bbox_heatmap(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox]
    data.bbox = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [heatmap]
    data.heatmap = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += 4 * object.bbox.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.heatmap);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosapiens_tool/img_bbox_heatmap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '293be47367cd390a527fa16826780e8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/Image image
    float32[] bbox # xmin, xmax, ymin, ymax
    sensor_msgs/Image heatmap
    
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new img_bbox_heatmap(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.bbox !== undefined) {
      resolved.bbox = msg.bbox;
    }
    else {
      resolved.bbox = []
    }

    if (msg.heatmap !== undefined) {
      resolved.heatmap = sensor_msgs.msg.Image.Resolve(msg.heatmap)
    }
    else {
      resolved.heatmap = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = img_bbox_heatmap;
