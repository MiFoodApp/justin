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

class TcpRealDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TcpRealDataRequest
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TcpRealDataRequest
    let len;
    let data = new TcpRealDataRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/TcpRealDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00ac1b2dfdd7eaac444ab500500930fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 index
    uint32 size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TcpRealDataRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

class TcpRealDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real_data = null;
    }
    else {
      if (initObj.hasOwnProperty('real_data')) {
        this.real_data = initObj.real_data
      }
      else {
        this.real_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TcpRealDataResponse
    // Serialize message field [real_data]
    bufferOffset = _arraySerializer.uint8(obj.real_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TcpRealDataResponse
    let len;
    let data = new TcpRealDataResponse(null);
    // Deserialize message field [real_data]
    data.real_data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.real_data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/TcpRealDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc3535a60a715defad9f46b94d89c16a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] real_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TcpRealDataResponse(null);
    if (msg.real_data !== undefined) {
      resolved.real_data = msg.real_data;
    }
    else {
      resolved.real_data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TcpRealDataRequest,
  Response: TcpRealDataResponse,
  md5sum() { return '977c1f4a671c337178b1c34621b41356'; },
  datatype() { return 'dobot_bringup/TcpRealData'; }
};
