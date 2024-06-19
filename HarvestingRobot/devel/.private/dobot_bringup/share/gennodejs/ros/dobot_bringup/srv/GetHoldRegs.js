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

class GetHoldRegsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.addr = null;
      this.count = null;
      this.valtype = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('addr')) {
        this.addr = initObj.addr
      }
      else {
        this.addr = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('valtype')) {
        this.valtype = initObj.valtype
      }
      else {
        this.valtype = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHoldRegsRequest
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [addr]
    bufferOffset = _serializer.int32(obj.addr, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [valtype]
    bufferOffset = _arraySerializer.string(obj.valtype, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHoldRegsRequest
    let len;
    let data = new GetHoldRegsRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [addr]
    data.addr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [valtype]
    data.valtype = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.valtype.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetHoldRegsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a31c071fa7b97a593b80a7d8ffc63e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 index
    int32 addr
    int32 count
    string[] valtype
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHoldRegsRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.addr !== undefined) {
      resolved.addr = msg.addr;
    }
    else {
      resolved.addr = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.valtype !== undefined) {
      resolved.valtype = msg.valtype;
    }
    else {
      resolved.valtype = []
    }

    return resolved;
    }
};

class GetHoldRegsResponse {
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
    // Serializes a message object of type GetHoldRegsResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHoldRegsResponse
    let len;
    let data = new GetHoldRegsResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetHoldRegsResponse';
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
    const resolved = new GetHoldRegsResponse(null);
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
  Request: GetHoldRegsRequest,
  Response: GetHoldRegsResponse,
  md5sum() { return '6c4d0215201339c310dc8bb40d2fe8ab'; },
  datatype() { return 'dobot_bringup/GetHoldRegs'; }
};
