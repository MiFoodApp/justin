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

class ModbusCreateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
      this.port = null;
      this.slave_id = null;
      this.is_rtu = null;
    }
    else {
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
      if (initObj.hasOwnProperty('slave_id')) {
        this.slave_id = initObj.slave_id
      }
      else {
        this.slave_id = 0;
      }
      if (initObj.hasOwnProperty('is_rtu')) {
        this.is_rtu = initObj.is_rtu
      }
      else {
        this.is_rtu = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModbusCreateRequest
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.int32(obj.port, buffer, bufferOffset);
    // Serialize message field [slave_id]
    bufferOffset = _serializer.int32(obj.slave_id, buffer, bufferOffset);
    // Serialize message field [is_rtu]
    bufferOffset = _arraySerializer.int32(obj.is_rtu, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModbusCreateRequest
    let len;
    let data = new ModbusCreateRequest(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [slave_id]
    data.slave_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_rtu]
    data.is_rtu = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ip);
    length += 4 * object.is_rtu.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/ModbusCreateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c57fede4da0120ad81331b39cab621bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip
    int32 port
    int32 slave_id
    int32[] is_rtu
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModbusCreateRequest(null);
    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    if (msg.slave_id !== undefined) {
      resolved.slave_id = msg.slave_id;
    }
    else {
      resolved.slave_id = 0
    }

    if (msg.is_rtu !== undefined) {
      resolved.is_rtu = msg.is_rtu;
    }
    else {
      resolved.is_rtu = []
    }

    return resolved;
    }
};

class ModbusCreateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModbusCreateResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModbusCreateResponse
    let len;
    let data = new ModbusCreateResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/ModbusCreateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93ae6749f38850704528d34881ae033f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 res
    int32 index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModbusCreateResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ModbusCreateRequest,
  Response: ModbusCreateResponse,
  md5sum() { return '81859286568c49567356da01e39e6422'; },
  datatype() { return 'dobot_bringup/ModbusCreate'; }
};
