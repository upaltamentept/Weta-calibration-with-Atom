// Auto-generated. Do not edit!

// (in-package atom_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDatasetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDatasetRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDatasetRequest
    let len;
    let data = new GetDatasetRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'atom_msgs/GetDatasetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDatasetRequest(null);
    return resolved;
    }
};

class GetDatasetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.dataset_json = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('dataset_json')) {
        this.dataset_json = initObj.dataset_json
      }
      else {
        this.dataset_json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDatasetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [dataset_json]
    bufferOffset = _serializer.string(obj.dataset_json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDatasetResponse
    let len;
    let data = new GetDatasetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dataset_json]
    data.dataset_json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dataset_json);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'atom_msgs/GetDatasetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f95a59a2834b82b7b9f74a87d123f078';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string dataset_json
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDatasetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.dataset_json !== undefined) {
      resolved.dataset_json = msg.dataset_json;
    }
    else {
      resolved.dataset_json = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDatasetRequest,
  Response: GetDatasetResponse,
  md5sum() { return 'f95a59a2834b82b7b9f74a87d123f078'; },
  datatype() { return 'atom_msgs/GetDataset'; }
};
