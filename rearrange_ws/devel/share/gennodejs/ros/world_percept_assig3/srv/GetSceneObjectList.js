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

let gazebo_msgs = _finder('gazebo_msgs');

//-----------------------------------------------------------

class GetSceneObjectListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSceneObjectListRequest
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSceneObjectListRequest
    let len;
    let data = new GetSceneObjectListRequest(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/GetSceneObjectListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f12226348d323c2e5b2031b3da53f1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Name of the target object. You can use "all" to get all the objects in the scene.
    string object_name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSceneObjectListRequest(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    return resolved;
    }
};

class GetSceneObjectListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_found = null;
      this.objects = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_found')) {
        this.obj_found = initObj.obj_found
      }
      else {
        this.obj_found = false;
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = new gazebo_msgs.msg.ModelStates();
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSceneObjectListResponse
    // Serialize message field [obj_found]
    bufferOffset = _serializer.bool(obj.obj_found, buffer, bufferOffset);
    // Serialize message field [objects]
    bufferOffset = gazebo_msgs.msg.ModelStates.serialize(obj.objects, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSceneObjectListResponse
    let len;
    let data = new GetSceneObjectListResponse(null);
    // Deserialize message field [obj_found]
    data.obj_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [objects]
    data.objects = gazebo_msgs.msg.ModelStates.deserialize(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += gazebo_msgs.msg.ModelStates.getMessageSize(object.objects);
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_percept_assig3/GetSceneObjectListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a002ec9697f31a7c31d8cda3e8964929';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # true if the target object was in the list
    bool obj_found
    # Target object, it could be one object or all the objects.
    
    gazebo_msgs/ModelStates objects
    
    # Message in case of error
    string message
    
    
    
    
    
    ================================================================================
    MSG: gazebo_msgs/ModelStates
    # broadcast all model states in world frame
    string[] name                 # model names
    geometry_msgs/Pose[] pose     # desired pose in world frame
    geometry_msgs/Twist[] twist   # desired twist in world frame
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSceneObjectListResponse(null);
    if (msg.obj_found !== undefined) {
      resolved.obj_found = msg.obj_found;
    }
    else {
      resolved.obj_found = false
    }

    if (msg.objects !== undefined) {
      resolved.objects = gazebo_msgs.msg.ModelStates.Resolve(msg.objects)
    }
    else {
      resolved.objects = new gazebo_msgs.msg.ModelStates()
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSceneObjectListRequest,
  Response: GetSceneObjectListResponse,
  md5sum() { return '49b647e60541a19da96e1aeac31fdfb8'; },
  datatype() { return 'world_percept_assig3/GetSceneObjectList'; }
};
