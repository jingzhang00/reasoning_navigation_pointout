// Auto-generated. Do not edit!

// (in-package world_percept_assig3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetInitTiagoPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tiago_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('tiago_pose')) {
        this.tiago_pose = initObj.tiago_pose
      }
      else {
        this.tiago_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInitTiagoPoseRequest
    // Serialize message field [tiago_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tiago_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInitTiagoPoseRequest
    let len;
    let data = new SetInitTiagoPoseRequest(null);
    // Deserialize message field [tiago_pose]
    data.tiago_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/SetInitTiagoPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0c4efcc8725e1ae77feed8e82677da1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Initial Tiago Pose wrt gazebo world (ground_plane)
    geometry_msgs/Pose tiago_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInitTiagoPoseRequest(null);
    if (msg.tiago_pose !== undefined) {
      resolved.tiago_pose = geometry_msgs.msg.Pose.Resolve(msg.tiago_pose)
    }
    else {
      resolved.tiago_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class SetInitTiagoPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confirmation = null;
    }
    else {
      if (initObj.hasOwnProperty('confirmation')) {
        this.confirmation = initObj.confirmation
      }
      else {
        this.confirmation = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInitTiagoPoseResponse
    // Serialize message field [confirmation]
    bufferOffset = _serializer.bool(obj.confirmation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInitTiagoPoseResponse
    let len;
    let data = new SetInitTiagoPoseResponse(null);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/SetInitTiagoPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f27299616d4eae5b55699f532a896283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool confirmation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInitTiagoPoseResponse(null);
    if (msg.confirmation !== undefined) {
      resolved.confirmation = msg.confirmation;
    }
    else {
      resolved.confirmation = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetInitTiagoPoseRequest,
  Response: SetInitTiagoPoseResponse,
  md5sum() { return '506d0acd0d4a87fa64b5270d2249c2f0'; },
  datatype() { return 'world_percept_assig3/SetInitTiagoPose'; }
};
