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

class MoveJogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axisID = null;
      this.paramValue = null;
    }
    else {
      if (initObj.hasOwnProperty('axisID')) {
        this.axisID = initObj.axisID
      }
      else {
        this.axisID = '';
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
    // Serializes a message object of type MoveJogRequest
    // Serialize message field [axisID]
    bufferOffset = _serializer.string(obj.axisID, buffer, bufferOffset);
    // Serialize message field [paramValue]
    bufferOffset = _arraySerializer.string(obj.paramValue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJogRequest
    let len;
    let data = new MoveJogRequest(null);
    // Deserialize message field [axisID]
    data.axisID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [paramValue]
    data.paramValue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.axisID);
    object.paramValue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/MoveJogRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57755273b7612f8d94b410dc31ef47b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string axisID
    string[] paramValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJogRequest(null);
    if (msg.axisID !== undefined) {
      resolved.axisID = msg.axisID;
    }
    else {
      resolved.axisID = ''
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

class MoveJogResponse {
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
    // Serializes a message object of type MoveJogResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJogResponse
    let len;
    let data = new MoveJogResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/MoveJogResponse';
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
    const resolved = new MoveJogResponse(null);
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
  Request: MoveJogRequest,
  Response: MoveJogResponse,
  md5sum() { return '319211ff13c695539e6dfdbf43aeb58b'; },
  datatype() { return 'dobot_bringup/MoveJog'; }
};
