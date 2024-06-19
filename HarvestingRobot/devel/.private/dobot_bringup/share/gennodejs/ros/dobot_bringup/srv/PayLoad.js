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

class PayLoadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weight = null;
      this.inertia = null;
    }
    else {
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('inertia')) {
        this.inertia = initObj.inertia
      }
      else {
        this.inertia = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PayLoadRequest
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [inertia]
    bufferOffset = _serializer.float64(obj.inertia, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PayLoadRequest
    let len;
    let data = new PayLoadRequest(null);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inertia]
    data.inertia = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/PayLoadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd048113fcce900fc16033d1b023d26a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 weight
    float64 inertia
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PayLoadRequest(null);
    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.inertia !== undefined) {
      resolved.inertia = msg.inertia;
    }
    else {
      resolved.inertia = 0.0
    }

    return resolved;
    }
};

class PayLoadResponse {
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
    // Serializes a message object of type PayLoadResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PayLoadResponse
    let len;
    let data = new PayLoadResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/PayLoadResponse';
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
    const resolved = new PayLoadResponse(null);
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
  Request: PayLoadRequest,
  Response: PayLoadResponse,
  md5sum() { return '81150ead356b50be531e7bdd2240ca16'; },
  datatype() { return 'dobot_bringup/PayLoad'; }
};
