// Auto-generated. Do not edit!

// (in-package world_percept_assig3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SendGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_name = null;
      this.target_x = null;
      this.target_y = null;
      this.target_orientation_z = null;
      this.target_orientation_w = null;
    }
    else {
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
      if (initObj.hasOwnProperty('target_x')) {
        this.target_x = initObj.target_x
      }
      else {
        this.target_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_y')) {
        this.target_y = initObj.target_y
      }
      else {
        this.target_y = 0.0;
      }
      if (initObj.hasOwnProperty('target_orientation_z')) {
        this.target_orientation_z = initObj.target_orientation_z
      }
      else {
        this.target_orientation_z = 0.0;
      }
      if (initObj.hasOwnProperty('target_orientation_w')) {
        this.target_orientation_w = initObj.target_orientation_w
      }
      else {
        this.target_orientation_w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendGoalRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    // Serialize message field [target_x]
    bufferOffset = _serializer.float64(obj.target_x, buffer, bufferOffset);
    // Serialize message field [target_y]
    bufferOffset = _serializer.float64(obj.target_y, buffer, bufferOffset);
    // Serialize message field [target_orientation_z]
    bufferOffset = _serializer.float64(obj.target_orientation_z, buffer, bufferOffset);
    // Serialize message field [target_orientation_w]
    bufferOffset = _serializer.float64(obj.target_orientation_w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendGoalRequest
    let len;
    let data = new SendGoalRequest(null);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_x]
    data.target_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_y]
    data.target_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_orientation_z]
    data.target_orientation_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_orientation_w]
    data.target_orientation_w = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_name);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/SendGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdfa55e98bb48dbef0b27fec93487a33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SendGoal.srv
    string target_name
    float64 target_x
    float64 target_y
    float64 target_orientation_z
    float64 target_orientation_w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendGoalRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    if (msg.target_x !== undefined) {
      resolved.target_x = msg.target_x;
    }
    else {
      resolved.target_x = 0.0
    }

    if (msg.target_y !== undefined) {
      resolved.target_y = msg.target_y;
    }
    else {
      resolved.target_y = 0.0
    }

    if (msg.target_orientation_z !== undefined) {
      resolved.target_orientation_z = msg.target_orientation_z;
    }
    else {
      resolved.target_orientation_z = 0.0
    }

    if (msg.target_orientation_w !== undefined) {
      resolved.target_orientation_w = msg.target_orientation_w;
    }
    else {
      resolved.target_orientation_w = 0.0
    }

    return resolved;
    }
};

class SendGoalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendGoalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendGoalResponse
    let len;
    let data = new SendGoalResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/SendGoalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendGoalResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendGoalRequest,
  Response: SendGoalResponse,
  md5sum() { return 'c6c193b83d729c060fe663d1f1fec285'; },
  datatype() { return 'world_percept_assig3/SendGoal'; }
};
