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

class cmd_vel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_left = null;
      this.v_right = null;
      this.v_left_stm = null;
      this.v_right_stm = null;
    }
    else {
      if (initObj.hasOwnProperty('v_left')) {
        this.v_left = initObj.v_left
      }
      else {
        this.v_left = 0.0;
      }
      if (initObj.hasOwnProperty('v_right')) {
        this.v_right = initObj.v_right
      }
      else {
        this.v_right = 0.0;
      }
      if (initObj.hasOwnProperty('v_left_stm')) {
        this.v_left_stm = initObj.v_left_stm
      }
      else {
        this.v_left_stm = 0.0;
      }
      if (initObj.hasOwnProperty('v_right_stm')) {
        this.v_right_stm = initObj.v_right_stm
      }
      else {
        this.v_right_stm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cmd_vel
    // Serialize message field [v_left]
    bufferOffset = _serializer.float32(obj.v_left, buffer, bufferOffset);
    // Serialize message field [v_right]
    bufferOffset = _serializer.float32(obj.v_right, buffer, bufferOffset);
    // Serialize message field [v_left_stm]
    bufferOffset = _serializer.float32(obj.v_left_stm, buffer, bufferOffset);
    // Serialize message field [v_right_stm]
    bufferOffset = _serializer.float32(obj.v_right_stm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cmd_vel
    let len;
    let data = new cmd_vel(null);
    // Deserialize message field [v_left]
    data.v_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_right]
    data.v_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_left_stm]
    data.v_left_stm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_right_stm]
    data.v_right_stm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'utils/cmd_vel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '303b665cd559d8efcb8493212084ac67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 v_left
    float32 v_right
    float32 v_left_stm
    float32 v_right_stm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cmd_vel(null);
    if (msg.v_left !== undefined) {
      resolved.v_left = msg.v_left;
    }
    else {
      resolved.v_left = 0.0
    }

    if (msg.v_right !== undefined) {
      resolved.v_right = msg.v_right;
    }
    else {
      resolved.v_right = 0.0
    }

    if (msg.v_left_stm !== undefined) {
      resolved.v_left_stm = msg.v_left_stm;
    }
    else {
      resolved.v_left_stm = 0.0
    }

    if (msg.v_right_stm !== undefined) {
      resolved.v_right_stm = msg.v_right_stm;
    }
    else {
      resolved.v_right_stm = 0.0
    }

    return resolved;
    }
};

module.exports = cmd_vel;
