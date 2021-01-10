// Auto-generated. Do not edit!

// (in-package xihelm_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Navigate2DFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_remaining')) {
        this.distance_remaining = initObj.distance_remaining
      }
      else {
        this.distance_remaining = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Navigate2DFeedback
    // Serialize message field [distance_remaining]
    bufferOffset = _serializer.float32(obj.distance_remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Navigate2DFeedback
    let len;
    let data = new Navigate2DFeedback(null);
    // Deserialize message field [distance_remaining]
    data.distance_remaining = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xihelm_pkg/Navigate2DFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64b64afc81806ad83ed607add12142ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Feedback
    float32 distance_remaining
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Navigate2DFeedback(null);
    if (msg.distance_remaining !== undefined) {
      resolved.distance_remaining = msg.distance_remaining;
    }
    else {
      resolved.distance_remaining = 0.0
    }

    return resolved;
    }
};

module.exports = Navigate2DFeedback;
