// Auto-generated. Do not edit!

// (in-package atom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DepthLabels {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern_name = null;
      this.detected = null;
      this.idxs = null;
      this.idxs_limit_points = null;
    }
    else {
      if (initObj.hasOwnProperty('pattern_name')) {
        this.pattern_name = initObj.pattern_name
      }
      else {
        this.pattern_name = '';
      }
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = false;
      }
      if (initObj.hasOwnProperty('idxs')) {
        this.idxs = initObj.idxs
      }
      else {
        this.idxs = [];
      }
      if (initObj.hasOwnProperty('idxs_limit_points')) {
        this.idxs_limit_points = initObj.idxs_limit_points
      }
      else {
        this.idxs_limit_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DepthLabels
    // Serialize message field [pattern_name]
    bufferOffset = _serializer.string(obj.pattern_name, buffer, bufferOffset);
    // Serialize message field [detected]
    bufferOffset = _serializer.bool(obj.detected, buffer, bufferOffset);
    // Serialize message field [idxs]
    bufferOffset = _arraySerializer.uint32(obj.idxs, buffer, bufferOffset, null);
    // Serialize message field [idxs_limit_points]
    bufferOffset = _arraySerializer.uint32(obj.idxs_limit_points, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DepthLabels
    let len;
    let data = new DepthLabels(null);
    // Deserialize message field [pattern_name]
    data.pattern_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detected]
    data.detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [idxs]
    data.idxs = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [idxs_limit_points]
    data.idxs_limit_points = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pattern_name);
    length += 4 * object.idxs.length;
    length += 4 * object.idxs_limit_points.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atom_msgs/DepthLabels';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1feeee9a8d44fc8fa147e3f3e0194a1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pattern_name
    bool detected
    uint32[] idxs
    uint32[] idxs_limit_points
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DepthLabels(null);
    if (msg.pattern_name !== undefined) {
      resolved.pattern_name = msg.pattern_name;
    }
    else {
      resolved.pattern_name = ''
    }

    if (msg.detected !== undefined) {
      resolved.detected = msg.detected;
    }
    else {
      resolved.detected = false
    }

    if (msg.idxs !== undefined) {
      resolved.idxs = msg.idxs;
    }
    else {
      resolved.idxs = []
    }

    if (msg.idxs_limit_points !== undefined) {
      resolved.idxs_limit_points = msg.idxs_limit_points;
    }
    else {
      resolved.idxs_limit_points = []
    }

    return resolved;
    }
};

module.exports = DepthLabels;
