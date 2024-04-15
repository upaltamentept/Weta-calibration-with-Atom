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

class GetAdditionalTfsInteractiveMarkerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAdditionalTfsInteractiveMarkerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAdditionalTfsInteractiveMarkerRequest
    let len;
    let data = new GetAdditionalTfsInteractiveMarkerRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'atom_msgs/GetAdditionalTfsInteractiveMarkerRequest';
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
    const resolved = new GetAdditionalTfsInteractiveMarkerRequest(null);
    return resolved;
    }
};

class GetAdditionalTfsInteractiveMarkerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.visible = null;
      this.scale = null;
    }
    else {
      if (initObj.hasOwnProperty('visible')) {
        this.visible = initObj.visible
      }
      else {
        this.visible = false;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAdditionalTfsInteractiveMarkerResponse
    // Serialize message field [visible]
    bufferOffset = _serializer.bool(obj.visible, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float32(obj.scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAdditionalTfsInteractiveMarkerResponse
    let len;
    let data = new GetAdditionalTfsInteractiveMarkerResponse(null);
    // Deserialize message field [visible]
    data.visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'atom_msgs/GetAdditionalTfsInteractiveMarkerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a13bc23ac434a77acb1a1c56a01ae850';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool visible
    float32 scale
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAdditionalTfsInteractiveMarkerResponse(null);
    if (msg.visible !== undefined) {
      resolved.visible = msg.visible;
    }
    else {
      resolved.visible = false
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAdditionalTfsInteractiveMarkerRequest,
  Response: GetAdditionalTfsInteractiveMarkerResponse,
  md5sum() { return 'a13bc23ac434a77acb1a1c56a01ae850'; },
  datatype() { return 'atom_msgs/GetAdditionalTfsInteractiveMarker'; }
};
