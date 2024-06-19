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

class EnableRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.args = null;
    }
    else {
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableRobotRequest
    // Serialize message field [args]
    bufferOffset = _arraySerializer.float64(obj.args, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableRobotRequest
    let len;
    let data = new EnableRobotRequest(null);
    // Deserialize message field [args]
    data.args = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.args.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/EnableRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6424ff00ab5815ba232de90313cda317';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] args
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableRobotRequest(null);
    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = []
    }

    return resolved;
    }
};

class EnableRobotResponse {
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
    // Serializes a message object of type EnableRobotResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableRobotResponse
    let len;
    let data = new EnableRobotResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/EnableRobotResponse';
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
    const resolved = new EnableRobotResponse(null);
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
  Request: EnableRobotRequest,
  Response: EnableRobotResponse,
  md5sum() { return 'c8c32a9a172a18b46989544c88798d15'; },
  datatype() { return 'dobot_bringup/EnableRobot'; }
};
