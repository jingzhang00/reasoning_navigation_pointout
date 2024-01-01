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

class UpdateObjectListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_pose = null;
      this.object_name = null;
    }
    else {
      if (initObj.hasOwnProperty('object_pose')) {
        this.object_pose = initObj.object_pose
      }
      else {
        this.object_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateObjectListRequest
    // Serialize message field [object_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.object_pose, buffer, bufferOffset);
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateObjectListRequest
    let len;
    let data = new UpdateObjectListRequest(null);
    // Deserialize message field [object_pose]
    data.object_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/UpdateObjectListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '222d5a82080ff468b2e6652bcf649b40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # New Object for the list
    geometry_msgs/Pose object_pose
    string object_name
    
    
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
    const resolved = new UpdateObjectListRequest(null);
    if (msg.object_pose !== undefined) {
      resolved.object_pose = geometry_msgs.msg.Pose.Resolve(msg.object_pose)
    }
    else {
      resolved.object_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    return resolved;
    }
};

class UpdateObjectListResponse {
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
    // Serializes a message object of type UpdateObjectListResponse
    // Serialize message field [confirmation]
    bufferOffset = _serializer.bool(obj.confirmation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateObjectListResponse
    let len;
    let data = new UpdateObjectListResponse(null);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/UpdateObjectListResponse';
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
    const resolved = new UpdateObjectListResponse(null);
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
  Request: UpdateObjectListRequest,
  Response: UpdateObjectListResponse,
  md5sum() { return '07fb332925eec5f4d2f3c7b2da4de91d'; },
  datatype() { return 'world_percept_assig3/UpdateObjectList'; }
};
