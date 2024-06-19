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

class SpeedFactorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('ratio')) {
        this.ratio = initObj.ratio
      }
      else {
        this.ratio = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedFactorRequest
    // Serialize message field [ratio]
    bufferOffset = _serializer.int32(obj.ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedFactorRequest
    let len;
    let data = new SpeedFactorRequest(null);
    // Deserialize message field [ratio]
    data.ratio = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SpeedFactorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '132c75cf99b8d9ca8c3bb6253da8b912';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ratio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedFactorRequest(null);
    if (msg.ratio !== undefined) {
      resolved.ratio = msg.ratio;
    }
    else {
      resolved.ratio = 0
    }

    return resolved;
    }
};

class SpeedFactorResponse {
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
    // Serializes a message object of type SpeedFactorResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedFactorResponse
    let len;
    let data = new SpeedFactorResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SpeedFactorResponse';
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
    const resolved = new SpeedFactorResponse(null);
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
  Request: SpeedFactorRequest,
  Response: SpeedFactorResponse,
  md5sum() { return 'b12d6e3ef251a5d143f5b7b986591260'; },
  datatype() { return 'dobot_bringup/SpeedFactor'; }
};
