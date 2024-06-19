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

class StartTraceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trace_name = null;
    }
    else {
      if (initObj.hasOwnProperty('trace_name')) {
        this.trace_name = initObj.trace_name
      }
      else {
        this.trace_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartTraceRequest
    // Serialize message field [trace_name]
    bufferOffset = _serializer.string(obj.trace_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTraceRequest
    let len;
    let data = new StartTraceRequest(null);
    // Deserialize message field [trace_name]
    data.trace_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.trace_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/StartTraceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '215f4016db1b56e85ad168b46e02a759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string trace_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartTraceRequest(null);
    if (msg.trace_name !== undefined) {
      resolved.trace_name = msg.trace_name;
    }
    else {
      resolved.trace_name = ''
    }

    return resolved;
    }
};

class StartTraceResponse {
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
    // Serializes a message object of type StartTraceResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartTraceResponse
    let len;
    let data = new StartTraceResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/StartTraceResponse';
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
    const resolved = new StartTraceResponse(null);
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
  Request: StartTraceRequest,
  Response: StartTraceResponse,
  md5sum() { return '7873158229ecddf2dbfeddf339853b82'; },
  datatype() { return 'dobot_bringup/StartTrace'; }
};
