// Auto-generated. Do not edit!

// (in-package dobot_bringup.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RelMovLToolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.rx = null;
      this.ry = null;
      this.rz = null;
      this.tool = null;
      this.paramValue = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('rx')) {
        this.rx = initObj.rx
      }
      else {
        this.rx = 0.0;
      }
      if (initObj.hasOwnProperty('ry')) {
        this.ry = initObj.ry
      }
      else {
        this.ry = 0.0;
      }
      if (initObj.hasOwnProperty('rz')) {
        this.rz = initObj.rz
      }
      else {
        this.rz = 0.0;
      }
      if (initObj.hasOwnProperty('tool')) {
        this.tool = initObj.tool
      }
      else {
        this.tool = 0;
      }
      if (initObj.hasOwnProperty('paramValue')) {
        this.paramValue = initObj.paramValue
      }
      else {
        this.paramValue = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelMovLToolRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [rx]
    bufferOffset = _serializer.float64(obj.rx, buffer, bufferOffset);
    // Serialize message field [ry]
    bufferOffset = _serializer.float64(obj.ry, buffer, bufferOffset);
    // Serialize message field [rz]
    bufferOffset = _serializer.float64(obj.rz, buffer, bufferOffset);
    // Serialize message field [tool]
    bufferOffset = _serializer.int32(obj.tool, buffer, bufferOffset);
    // Serialize message field [paramValue]
    bufferOffset = _arraySerializer.string(obj.paramValue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelMovLToolRequest
    let len;
    let data = new RelMovLToolRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rx]
    data.rx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ry]
    data.ry = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rz]
    data.rz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tool]
    data.tool = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [paramValue]
    data.paramValue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paramValue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/RelMovLToolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fe5081710944936802f7a11147a4a8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 rx
    float64 ry
    float64 rz
    int32 tool
    string[] paramValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelMovLToolRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.rx !== undefined) {
      resolved.rx = msg.rx;
    }
    else {
      resolved.rx = 0.0
    }

    if (msg.ry !== undefined) {
      resolved.ry = msg.ry;
    }
    else {
      resolved.ry = 0.0
    }

    if (msg.rz !== undefined) {
      resolved.rz = msg.rz;
    }
    else {
      resolved.rz = 0.0
    }

    if (msg.tool !== undefined) {
      resolved.tool = msg.tool;
    }
    else {
      resolved.tool = 0
    }

    if (msg.paramValue !== undefined) {
      resolved.paramValue = msg.paramValue;
    }
    else {
      resolved.paramValue = []
    }

    return resolved;
    }
};

class RelMovLToolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelMovLToolResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelMovLToolResponse
    let len;
    let data = new RelMovLToolResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/RelMovLToolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca16cfbd5443ad97f6cc7ffd6bb67292';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 res
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelMovLToolResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RelMovLToolRequest,
  Response: RelMovLToolResponse,
  md5sum() { return 'cce5d7b80bc419b447b80cc47eb8fc50'; },
  datatype() { return 'dobot_bringup/RelMovLTool'; }
};
