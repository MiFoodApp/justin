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

class GetErrorIDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetErrorIDRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetErrorIDRequest
    let len;
    let data = new GetErrorIDRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetErrorIDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetErrorIDRequest(null);
    return resolved;
    }
};

class GetErrorIDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
      this.errorID = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0;
      }
      if (initObj.hasOwnProperty('errorID')) {
        this.errorID = initObj.errorID
      }
      else {
        this.errorID = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetErrorIDResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    // Serialize message field [errorID]
    bufferOffset = _arraySerializer.int32(obj.errorID, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetErrorIDResponse
    let len;
    let data = new GetErrorIDResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [errorID]
    data.errorID = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.errorID.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot_bringup/GetErrorIDResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21732a31ce08e00841e34036c6b93272';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 res
    int32[] errorID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetErrorIDResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0
    }

    if (msg.errorID !== undefined) {
      resolved.errorID = msg.errorID;
    }
    else {
      resolved.errorID = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetErrorIDRequest,
  Response: GetErrorIDResponse,
  md5sum() { return '21732a31ce08e00841e34036c6b93272'; },
  datatype() { return 'dobot_bringup/GetErrorID'; }
};
