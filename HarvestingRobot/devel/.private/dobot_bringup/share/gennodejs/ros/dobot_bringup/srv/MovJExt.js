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

class MovJExtRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.paramValue = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
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
    // Serializes a message object of type MovJExtRequest
    // Serialize message field [offset]
    bufferOffset = _serializer.float64(obj.offset, buffer, bufferOffset);
    // Serialize message field [paramValue]
    bufferOffset = _arraySerializer.string(obj.paramValue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovJExtRequest
    let len;
    let data = new MovJExtRequest(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [paramValue]
    data.paramValue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paramValue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/MovJExtRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d5a53002335dbbd2c5fae368b7ea44c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 offset
    string[] paramValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovJExtRequest(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
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

class MovJExtResponse {
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
    // Serializes a message object of type MovJExtResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovJExtResponse
    let len;
    let data = new MovJExtResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/MovJExtResponse';
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
    const resolved = new MovJExtResponse(null);
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
  Request: MovJExtRequest,
  Response: MovJExtResponse,
  md5sum() { return '9c5f1f0d2ab66db2c121e88f04537959'; },
  datatype() { return 'dobot_bringup/MovJExt'; }
};
