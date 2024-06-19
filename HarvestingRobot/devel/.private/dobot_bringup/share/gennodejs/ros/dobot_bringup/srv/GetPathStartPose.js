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

class GetPathStartPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traceName = null;
    }
    else {
      if (initObj.hasOwnProperty('traceName')) {
        this.traceName = initObj.traceName
      }
      else {
        this.traceName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPathStartPoseRequest
    // Serialize message field [traceName]
    bufferOffset = _serializer.string(obj.traceName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathStartPoseRequest
    let len;
    let data = new GetPathStartPoseRequest(null);
    // Deserialize message field [traceName]
    data.traceName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.traceName);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetPathStartPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2509f3cb4d70960bf00043cebb91e3b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  traceName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPathStartPoseRequest(null);
    if (msg.traceName !== undefined) {
      resolved.traceName = msg.traceName;
    }
    else {
      resolved.traceName = ''
    }

    return resolved;
    }
};

class GetPathStartPoseResponse {
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
    // Serializes a message object of type GetPathStartPoseResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathStartPoseResponse
    let len;
    let data = new GetPathStartPoseResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetPathStartPoseResponse';
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
    const resolved = new GetPathStartPoseResponse(null);
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
  Request: GetPathStartPoseRequest,
  Response: GetPathStartPoseResponse,
  md5sum() { return '82df6582f8dcb92a8fcd749010d9e909'; },
  datatype() { return 'dobot_bringup/GetPathStartPose'; }
};
