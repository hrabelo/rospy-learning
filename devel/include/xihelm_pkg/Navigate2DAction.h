// Generated by gencpp from file xihelm_pkg/Navigate2DAction.msg
// DO NOT EDIT!


#ifndef XIHELM_PKG_MESSAGE_NAVIGATE2DACTION_H
#define XIHELM_PKG_MESSAGE_NAVIGATE2DACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <xihelm_pkg/Navigate2DActionGoal.h>
#include <xihelm_pkg/Navigate2DActionResult.h>
#include <xihelm_pkg/Navigate2DActionFeedback.h>

namespace xihelm_pkg
{
template <class ContainerAllocator>
struct Navigate2DAction_
{
  typedef Navigate2DAction_<ContainerAllocator> Type;

  Navigate2DAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  Navigate2DAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::xihelm_pkg::Navigate2DActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::xihelm_pkg::Navigate2DActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::xihelm_pkg::Navigate2DActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> const> ConstPtr;

}; // struct Navigate2DAction_

typedef ::xihelm_pkg::Navigate2DAction_<std::allocator<void> > Navigate2DAction;

typedef boost::shared_ptr< ::xihelm_pkg::Navigate2DAction > Navigate2DActionPtr;
typedef boost::shared_ptr< ::xihelm_pkg::Navigate2DAction const> Navigate2DActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator1> & lhs, const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator1> & lhs, const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xihelm_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "013d5c8c36c68f15704a32cc184a546d";
  }

  static const char* value(const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x013d5c8c36c68f15ULL;
  static const uint64_t static_value2 = 0x704a32cc184a546dULL;
};

template<class ContainerAllocator>
struct DataType< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xihelm_pkg/Navigate2DAction";
  }

  static const char* value(const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Navigate2DActionGoal action_goal\n"
"Navigate2DActionResult action_result\n"
"Navigate2DActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"Navigate2DGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Goal\n"
"geometry_msgs/Point point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"Navigate2DResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"float32 elapsed_time\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"Navigate2DFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: xihelm_pkg/Navigate2DFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback\n"
"float32 distance_remaining\n"
"\n"
;
  }

  static const char* value(const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Navigate2DAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xihelm_pkg::Navigate2DAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xihelm_pkg::Navigate2DAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::xihelm_pkg::Navigate2DActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::xihelm_pkg::Navigate2DActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::xihelm_pkg::Navigate2DActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XIHELM_PKG_MESSAGE_NAVIGATE2DACTION_H