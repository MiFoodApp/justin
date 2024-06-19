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

class StartPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trace_name = null;
      this.const_val = null;
      this.cart = null;
    }
    else {
      if (initObj.hasOwnProperty('trace_name')) {
        this.trace_name = initObj.trace_name
      }
      else {
        this.trace_name = '';
      }
      if (initObj.hasOwnProperty('const_val')) {
        this.const_val = initObj.const_val
      }
      else {
        this.const_val = 0;
      }
      if (initObj.hasOwnProperty('cart')) {
        this.cart = initObj.cart
      }
      else {
        this.cart = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartPathRequest
    // Serialize message field [trace_name]
    bufferOffset = _serializer.string(obj.trace_name, buffer, bufferOffset);
    // Serialize message field [const_val]
    bufferOffset = _serializer.int32(obj.const_val, buffer, bufferOffset);
    // Serialize message field [cart]
    bufferOffset = _serializer.int32(obj.cart, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartPathRequest
    let len;
    let data = new StartPathRequest(null);
    // Deserialize message field [trace_name]
    data.trace_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [const_val]
    data.const_val = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cart]
    data.cart = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.trace_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/StartPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4951608306069c8a8b646ec8dd5aec26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string trace_name
    int32 const_val
    int32 cart
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartPathRequest(null);
    if (msg.trace_name !== undefined) {
      resolved.trace_name = msg.trace_name;
    }
    else {
      resolved.trace_name = ''
    }

    if (msg.const_val !== undefined) {
      resolved.const_val = msg.const_val;
    }
    else {
      resolved.const_val = 0
    }

    if (msg.cart !== undefined) {
      resolved.cart = msg.cart;
    }
    else {
      resolved.cart = 0
    }

    return resolved;
    }
};

class StartPathResponse {
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
    // Serializes a message object of type StartPathResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartPathResponse
    let len;
    let data = new StartPathResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/StartPathResponse';
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
    const resolved = new StartPathResponse(null);
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
  Request: StartPathRequest,
  Response: StartPathResponse,
  md5sum() { return '012e04e913faf311dafe5a22000e023c'; },
  datatype() { return 'dobot_bringup/StartPath'; }
};
