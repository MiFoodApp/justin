// Auto-generated. Do not edit!

// (in-package dobot_bringup.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_enable = null;
      this.is_connected = null;
    }
    else {
      if (initObj.hasOwnProperty('is_enable')) {
        this.is_enable = initObj.is_enable
      }
      else {
        this.is_enable = false;
      }
      if (initObj.hasOwnProperty('is_connected')) {
        this.is_connected = initObj.is_connected
      }
      else {
        this.is_connected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [is_enable]
    bufferOffset = _serializer.bool(obj.is_enable, buffer, bufferOffset);
    // Serialize message field [is_connected]
    bufferOffset = _serializer.bool(obj.is_connected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [is_enable]
    data.is_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_connected]
    data.is_connected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dobot_bringup/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03c2e6f26397d687a7b9b9208ea5a445';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_enable
    bool is_connected
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.is_enable !== undefined) {
      resolved.is_enable = msg.is_enable;
    }
    else {
      resolved.is_enable = false
    }

    if (msg.is_connected !== undefined) {
      resolved.is_connected = msg.is_connected;
    }
    else {
      resolved.is_connected = false
    }

    return resolved;
    }
};

module.exports = RobotStatus;
