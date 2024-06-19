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

class RelJointMovJRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset1 = null;
      this.offset2 = null;
      this.offset3 = null;
      this.offset4 = null;
      this.offset5 = null;
      this.offset6 = null;
      this.paramValue = null;
    }
    else {
      if (initObj.hasOwnProperty('offset1')) {
        this.offset1 = initObj.offset1
      }
      else {
        this.offset1 = 0.0;
      }
      if (initObj.hasOwnProperty('offset2')) {
        this.offset2 = initObj.offset2
      }
      else {
        this.offset2 = 0.0;
      }
      if (initObj.hasOwnProperty('offset3')) {
        this.offset3 = initObj.offset3
      }
      else {
        this.offset3 = 0.0;
      }
      if (initObj.hasOwnProperty('offset4')) {
        this.offset4 = initObj.offset4
      }
      else {
        this.offset4 = 0.0;
      }
      if (initObj.hasOwnProperty('offset5')) {
        this.offset5 = initObj.offset5
      }
      else {
        this.offset5 = 0.0;
      }
      if (initObj.hasOwnProperty('offset6')) {
        this.offset6 = initObj.offset6
      }
      else {
        this.offset6 = 0.0;
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
    // Serializes a message object of type RelJointMovJRequest
    // Serialize message field [offset1]
    bufferOffset = _serializer.float64(obj.offset1, buffer, bufferOffset);
    // Serialize message field [offset2]
    bufferOffset = _serializer.float64(obj.offset2, buffer, bufferOffset);
    // Serialize message field [offset3]
    bufferOffset = _serializer.float64(obj.offset3, buffer, bufferOffset);
    // Serialize message field [offset4]
    bufferOffset = _serializer.float64(obj.offset4, buffer, bufferOffset);
    // Serialize message field [offset5]
    bufferOffset = _serializer.float64(obj.offset5, buffer, bufferOffset);
    // Serialize message field [offset6]
    bufferOffset = _serializer.float64(obj.offset6, buffer, bufferOffset);
    // Serialize message field [paramValue]
    bufferOffset = _arraySerializer.string(obj.paramValue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelJointMovJRequest
    let len;
    let data = new RelJointMovJRequest(null);
    // Deserialize message field [offset1]
    data.offset1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset2]
    data.offset2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset3]
    data.offset3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset4]
    data.offset4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset5]
    data.offset5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset6]
    data.offset6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [paramValue]
    data.paramValue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paramValue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/RelJointMovJRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b1e1d884e18f48808ed6cd8a6abf307';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 offset1
    float64 offset2
    float64 offset3
    float64 offset4
    float64 offset5
    float64 offset6
    string[] paramValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelJointMovJRequest(null);
    if (msg.offset1 !== undefined) {
      resolved.offset1 = msg.offset1;
    }
    else {
      resolved.offset1 = 0.0
    }

    if (msg.offset2 !== undefined) {
      resolved.offset2 = msg.offset2;
    }
    else {
      resolved.offset2 = 0.0
    }

    if (msg.offset3 !== undefined) {
      resolved.offset3 = msg.offset3;
    }
    else {
      resolved.offset3 = 0.0
    }

    if (msg.offset4 !== undefined) {
      resolved.offset4 = msg.offset4;
    }
    else {
      resolved.offset4 = 0.0
    }

    if (msg.offset5 !== undefined) {
      resolved.offset5 = msg.offset5;
    }
    else {
      resolved.offset5 = 0.0
    }

    if (msg.offset6 !== undefined) {
      resolved.offset6 = msg.offset6;
    }
    else {
      resolved.offset6 = 0.0
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

class RelJointMovJResponse {
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
    // Serializes a message object of type RelJointMovJResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelJointMovJResponse
    let len;
    let data = new RelJointMovJResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/RelJointMovJResponse';
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
    const resolved = new RelJointMovJResponse(null);
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
  Request: RelJointMovJRequest,
  Response: RelJointMovJResponse,
  md5sum() { return '03967d766f807d795f6e85af35f413a1'; },
  datatype() { return 'dobot_bringup/RelJointMovJ'; }
};
