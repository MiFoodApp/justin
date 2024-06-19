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

class SetPayloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.load = null;
    }
    else {
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPayloadRequest
    // Serialize message field [load]
    bufferOffset = _serializer.float64(obj.load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadRequest
    let len;
    let data = new SetPayloadRequest(null);
    // Deserialize message field [load]
    data.load = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetPayloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee67a29bbb1500ef643f8fec2bb04bc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 load
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPayloadRequest(null);
    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = 0.0
    }

    return resolved;
    }
};

class SetPayloadResponse {
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
    // Serializes a message object of type SetPayloadResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadResponse
    let len;
    let data = new SetPayloadResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetPayloadResponse';
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
    const resolved = new SetPayloadResponse(null);
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
  Request: SetPayloadRequest,
  Response: SetPayloadResponse,
  md5sum() { return '0ccc960c0675c1aad4912155bb3fde8a'; },
  datatype() { return 'dobot_bringup/SetPayload'; }
};
