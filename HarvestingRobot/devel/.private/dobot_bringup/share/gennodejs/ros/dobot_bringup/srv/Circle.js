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

class CircleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.x1 = null;
      this.y1 = null;
      this.z1 = null;
      this.a1 = null;
      this.b1 = null;
      this.c1 = null;
      this.x2 = null;
      this.y2 = null;
      this.z2 = null;
      this.a2 = null;
      this.b2 = null;
      this.c2 = null;
      this.paramValue = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('z1')) {
        this.z1 = initObj.z1
      }
      else {
        this.z1 = 0.0;
      }
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = 0.0;
      }
      if (initObj.hasOwnProperty('b1')) {
        this.b1 = initObj.b1
      }
      else {
        this.b1 = 0.0;
      }
      if (initObj.hasOwnProperty('c1')) {
        this.c1 = initObj.c1
      }
      else {
        this.c1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('z2')) {
        this.z2 = initObj.z2
      }
      else {
        this.z2 = 0.0;
      }
      if (initObj.hasOwnProperty('a2')) {
        this.a2 = initObj.a2
      }
      else {
        this.a2 = 0.0;
      }
      if (initObj.hasOwnProperty('b2')) {
        this.b2 = initObj.b2
      }
      else {
        this.b2 = 0.0;
      }
      if (initObj.hasOwnProperty('c2')) {
        this.c2 = initObj.c2
      }
      else {
        this.c2 = 0.0;
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
    // Serializes a message object of type CircleRequest
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float64(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float64(obj.y1, buffer, bufferOffset);
    // Serialize message field [z1]
    bufferOffset = _serializer.float64(obj.z1, buffer, bufferOffset);
    // Serialize message field [a1]
    bufferOffset = _serializer.float64(obj.a1, buffer, bufferOffset);
    // Serialize message field [b1]
    bufferOffset = _serializer.float64(obj.b1, buffer, bufferOffset);
    // Serialize message field [c1]
    bufferOffset = _serializer.float64(obj.c1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float64(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float64(obj.y2, buffer, bufferOffset);
    // Serialize message field [z2]
    bufferOffset = _serializer.float64(obj.z2, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float64(obj.a2, buffer, bufferOffset);
    // Serialize message field [b2]
    bufferOffset = _serializer.float64(obj.b2, buffer, bufferOffset);
    // Serialize message field [c2]
    bufferOffset = _serializer.float64(obj.c2, buffer, bufferOffset);
    // Serialize message field [paramValue]
    bufferOffset = _arraySerializer.string(obj.paramValue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CircleRequest
    let len;
    let data = new CircleRequest(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z1]
    data.z1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b1]
    data.b1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c1]
    data.c1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z2]
    data.z2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b2]
    data.b2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c2]
    data.c2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [paramValue]
    data.paramValue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paramValue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 104;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/CircleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f601c879842fb49a2308443b5eaa00b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 count
    float64 x1
    float64 y1
    float64 z1
    float64 a1
    float64 b1
    float64 c1
    
    float64 x2
    float64 y2
    float64 z2
    float64 a2
    float64 b2
    float64 c2
    string[] paramValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CircleRequest(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.z1 !== undefined) {
      resolved.z1 = msg.z1;
    }
    else {
      resolved.z1 = 0.0
    }

    if (msg.a1 !== undefined) {
      resolved.a1 = msg.a1;
    }
    else {
      resolved.a1 = 0.0
    }

    if (msg.b1 !== undefined) {
      resolved.b1 = msg.b1;
    }
    else {
      resolved.b1 = 0.0
    }

    if (msg.c1 !== undefined) {
      resolved.c1 = msg.c1;
    }
    else {
      resolved.c1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.z2 !== undefined) {
      resolved.z2 = msg.z2;
    }
    else {
      resolved.z2 = 0.0
    }

    if (msg.a2 !== undefined) {
      resolved.a2 = msg.a2;
    }
    else {
      resolved.a2 = 0.0
    }

    if (msg.b2 !== undefined) {
      resolved.b2 = msg.b2;
    }
    else {
      resolved.b2 = 0.0
    }

    if (msg.c2 !== undefined) {
      resolved.c2 = msg.c2;
    }
    else {
      resolved.c2 = 0.0
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

class CircleResponse {
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
    // Serializes a message object of type CircleResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CircleResponse
    let len;
    let data = new CircleResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/CircleResponse';
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
    const resolved = new CircleResponse(null);
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
  Request: CircleRequest,
  Response: CircleResponse,
  md5sum() { return '595948d4551fca3138762c937ac2d5fd'; },
  datatype() { return 'dobot_bringup/Circle'; }
};
