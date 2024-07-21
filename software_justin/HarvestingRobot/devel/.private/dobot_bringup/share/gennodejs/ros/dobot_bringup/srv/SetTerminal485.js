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

class SetTerminal485Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.baudRate = null;
      this.dataLen = null;
      this.parityBit = null;
      this.stopBit = null;
    }
    else {
      if (initObj.hasOwnProperty('baudRate')) {
        this.baudRate = initObj.baudRate
      }
      else {
        this.baudRate = 0;
      }
      if (initObj.hasOwnProperty('dataLen')) {
        this.dataLen = initObj.dataLen
      }
      else {
        this.dataLen = 0;
      }
      if (initObj.hasOwnProperty('parityBit')) {
        this.parityBit = initObj.parityBit
      }
      else {
        this.parityBit = '';
      }
      if (initObj.hasOwnProperty('stopBit')) {
        this.stopBit = initObj.stopBit
      }
      else {
        this.stopBit = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTerminal485Request
    // Serialize message field [baudRate]
    bufferOffset = _serializer.int32(obj.baudRate, buffer, bufferOffset);
    // Serialize message field [dataLen]
    bufferOffset = _serializer.int32(obj.dataLen, buffer, bufferOffset);
    // Serialize message field [parityBit]
    bufferOffset = _serializer.string(obj.parityBit, buffer, bufferOffset);
    // Serialize message field [stopBit]
    bufferOffset = _serializer.int32(obj.stopBit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTerminal485Request
    let len;
    let data = new SetTerminal485Request(null);
    // Deserialize message field [baudRate]
    data.baudRate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dataLen]
    data.dataLen = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parityBit]
    data.parityBit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stopBit]
    data.stopBit = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.parityBit);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetTerminal485Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cee793cb6052d5ff291b0828ddbf525';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 baudRate
    int32 dataLen
    string parityBit
    int32 stopBit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTerminal485Request(null);
    if (msg.baudRate !== undefined) {
      resolved.baudRate = msg.baudRate;
    }
    else {
      resolved.baudRate = 0
    }

    if (msg.dataLen !== undefined) {
      resolved.dataLen = msg.dataLen;
    }
    else {
      resolved.dataLen = 0
    }

    if (msg.parityBit !== undefined) {
      resolved.parityBit = msg.parityBit;
    }
    else {
      resolved.parityBit = ''
    }

    if (msg.stopBit !== undefined) {
      resolved.stopBit = msg.stopBit;
    }
    else {
      resolved.stopBit = 0
    }

    return resolved;
    }
};

class SetTerminal485Response {
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
    // Serializes a message object of type SetTerminal485Response
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTerminal485Response
    let len;
    let data = new SetTerminal485Response(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/SetTerminal485Response';
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
    const resolved = new SetTerminal485Response(null);
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
  Request: SetTerminal485Request,
  Response: SetTerminal485Response,
  md5sum() { return '69a7692f366328cd10e3101ae3b97e60'; },
  datatype() { return 'dobot_bringup/SetTerminal485'; }
};
