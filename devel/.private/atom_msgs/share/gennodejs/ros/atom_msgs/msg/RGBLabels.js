// Auto-generated. Do not edit!

// (in-package atom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection2D = require('./Detection2D.js');

//-----------------------------------------------------------

class RGBLabels {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern_name = null;
      this.detected = null;
      this.idxs = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBLabels
    // Serialize message field [pattern_name]
    bufferOffset = _serializer.string(obj.pattern_name, buffer, bufferOffset);
    // Serialize message field [detected]
    bufferOffset = _serializer.bool(obj.detected, buffer, bufferOffset);
    // Serialize message field [idxs]
    // Serialize the length for message field [idxs]
    bufferOffset = _serializer.uint32(obj.idxs.length, buffer, bufferOffset);
    obj.idxs.forEach((val) => {
      bufferOffset = Detection2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBLabels
    let len;
    let data = new RGBLabels(null);
    // Deserialize message field [pattern_name]
    data.pattern_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detected]
    data.detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [idxs]
    // Deserialize array length for message field [idxs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.idxs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.idxs[i] = Detection2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pattern_name);
    length += 12 * object.idxs.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'atom_msgs/RGBLabels';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '490746e211ca178da64659e6df5e160d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pattern_name
    bool detected
    Detection2D[] idxs
    
    ================================================================================
    MSG: atom_msgs/Detection2D
    float32 x
    float32 y
    uint32 id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGBLabels(null);
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
      resolved.idxs = new Array(msg.idxs.length);
      for (let i = 0; i < resolved.idxs.length; ++i) {
        resolved.idxs[i] = Detection2D.Resolve(msg.idxs[i]);
      }
    }
    else {
      resolved.idxs = []
    }

    return resolved;
    }
};

module.exports = RGBLabels;
