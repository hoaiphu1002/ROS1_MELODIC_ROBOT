// Auto-generated. Do not edit!

// (in-package utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class waypoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction_x = null;
      this.direction_y = null;
    }
    else {
      if (initObj.hasOwnProperty('direction_x')) {
        this.direction_x = initObj.direction_x
      }
      else {
        this.direction_x = 0.0;
      }
      if (initObj.hasOwnProperty('direction_y')) {
        this.direction_y = initObj.direction_y
      }
      else {
        this.direction_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type waypoints
    // Serialize message field [direction_x]
    bufferOffset = _serializer.float32(obj.direction_x, buffer, bufferOffset);
    // Serialize message field [direction_y]
    bufferOffset = _serializer.float32(obj.direction_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type waypoints
    let len;
    let data = new waypoints(null);
    // Deserialize message field [direction_x]
    data.direction_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction_y]
    data.direction_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'utils/waypoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f00f7d19d2890479eddb53378d35106c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 direction_x
    float32 direction_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new waypoints(null);
    if (msg.direction_x !== undefined) {
      resolved.direction_x = msg.direction_x;
    }
    else {
      resolved.direction_x = 0.0
    }

    if (msg.direction_y !== undefined) {
      resolved.direction_y = msg.direction_y;
    }
    else {
      resolved.direction_y = 0.0
    }

    return resolved;
    }
};

module.exports = waypoints;
