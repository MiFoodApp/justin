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

class SetArmOrientationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LorR = null;
      this.UorD = null;
      this.ForN = null;
      this.Config6 = null;
    }
    else {
      if (initObj.hasOwnProperty('LorR')) {
        this.LorR = initObj.LorR
      }
      else {
        this.LorR = 0;
      }
      if (initObj.hasOwnProperty('UorD')) {
        this.UorD = initObj.UorD
      }
      else {
        this.UorD = 0;
      }
      if (initObj.hasOwnProperty('ForN')) {
        this.ForN = initObj.ForN
      }
      else {
        this.ForN = 0;
      }
      if (initObj.hasOwnProperty('Config6')) {
        this.Config6 = initObj.Config6
      }
      else {
        this.Config6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetArmOrientationRequest
    // Serialize message field [LorR]
    bufferOffset = _serializer.int32(obj.LorR, buffer, bufferOffset);
    // Serialize message field [UorD]
    bufferOffset = _serializer.int32(obj.UorD, buffer, bufferOffset);
    // Serialize message field [ForN]
    bufferOffset = _serializer.int32(obj.ForN, buffer, bufferOffset);
    // Serialize message field [Config6]
    bufferOffset = _serializer.int32(obj.Config6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetArmOrientationRequest
    let len;
    let data = new SetArmOrientationRequest(null);
    // Deserialize message field [LorR]
    data.LorR = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [UorD]
    data.UorD = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ForN]
    data.ForN = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Config6]
    data.Config6 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetArmOrientationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c90cbf98f71e8f7fa1b16cba3b4c83e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 LorR
    int32 UorD
    int32 ForN
    int32 Config6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetArmOrientationRequest(null);
    if (msg.LorR !== undefined) {
      resolved.LorR = msg.LorR;
    }
    else {
      resolved.LorR = 0
    }

    if (msg.UorD !== undefined) {
      resolved.UorD = msg.UorD;
    }
    else {
      resolved.UorD = 0
    }

    if (msg.ForN !== undefined) {
      resolved.ForN = msg.ForN;
    }
    else {
      resolved.ForN = 0
    }

    if (msg.Config6 !== undefined) {
      resolved.Config6 = msg.Config6;
    }
    else {
      resolved.Config6 = 0
    }

    return resolved;
    }
};

class SetArmOrientationResponse {
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
    // Serializes a message object of type SetArmOrientationResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetArmOrientationResponse
    let len;
    let data = new SetArmOrientationResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetArmOrientationResponse';
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
    const resolved = new SetArmOrientationResponse(null);
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
  Request: SetArmOrientationRequest,
  Response: SetArmOrientationResponse,
  md5sum() { return 'ef4067edc06a1e1dbf02b5e0bd3a6322'; },
  datatype() { return 'dobot_bringup/SetArmOrientation'; }
};
