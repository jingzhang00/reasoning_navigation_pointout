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

class LoadKnowledgeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadKnowledgeRequest
    // Serialize message field [start]
    bufferOffset = _serializer.int64(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadKnowledgeRequest
    let len;
    let data = new LoadKnowledgeRequest(null);
    // Deserialize message field [start]
    data.start = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/LoadKnowledgeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3cefc2a81c697b38bf59faba5b0cd16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request is an integer called “start”
    int64 start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadKnowledgeRequest(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    return resolved;
    }
};

class LoadKnowledgeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confirm = null;
    }
    else {
      if (initObj.hasOwnProperty('confirm')) {
        this.confirm = initObj.confirm
      }
      else {
        this.confirm = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadKnowledgeResponse
    // Serialize message field [confirm]
    bufferOffset = _serializer.bool(obj.confirm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadKnowledgeResponse
    let len;
    let data = new LoadKnowledgeResponse(null);
    // Deserialize message field [confirm]
    data.confirm = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/LoadKnowledgeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b37994baa157ef8535427a2de0e06206';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  Response is a boolean called “confirm”
    bool confirm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadKnowledgeResponse(null);
    if (msg.confirm !== undefined) {
      resolved.confirm = msg.confirm;
    }
    else {
      resolved.confirm = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LoadKnowledgeRequest,
  Response: LoadKnowledgeResponse,
  md5sum() { return '9d9359c2e08422f16683a8ebec668cb6'; },
  datatype() { return 'world_percept_assig3/LoadKnowledge'; }
};
