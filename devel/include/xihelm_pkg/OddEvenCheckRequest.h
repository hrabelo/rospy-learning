// Generated by gencpp from file xihelm_pkg/OddEvenCheckRequest.msg
// DO NOT EDIT!


#ifndef XIHELM_PKG_MESSAGE_ODDEVENCHECKREQUEST_H
#define XIHELM_PKG_MESSAGE_ODDEVENCHECKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xihelm_pkg
{
template <class ContainerAllocator>
struct OddEvenCheckRequest_
{
  typedef OddEvenCheckRequest_<ContainerAllocator> Type;

  OddEvenCheckRequest_()
    : number(0)  {
    }
  OddEvenCheckRequest_(const ContainerAllocator& _alloc)
    : number(0)  {
  (void)_alloc;
    }



   typedef int32_t _number_type;
  _number_type number;





  typedef boost::shared_ptr< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OddEvenCheckRequest_

typedef ::xihelm_pkg::OddEvenCheckRequest_<std::allocator<void> > OddEvenCheckRequest;

typedef boost::shared_ptr< ::xihelm_pkg::OddEvenCheckRequest > OddEvenCheckRequestPtr;
typedef boost::shared_ptr< ::xihelm_pkg::OddEvenCheckRequest const> OddEvenCheckRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator1> & lhs, const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator2> & rhs)
{
  return lhs.number == rhs.number;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator1> & lhs, const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xihelm_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2474488a3908093ec1307bdd5b35815e";
  }

  static const char* value(const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2474488a3908093eULL;
  static const uint64_t static_value2 = 0xc1307bdd5b35815eULL;
};

template<class ContainerAllocator>
struct DataType< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xihelm_pkg/OddEvenCheckRequest";
  }

  static const char* value(const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 number\n"
;
  }

  static const char* value(const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OddEvenCheckRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xihelm_pkg::OddEvenCheckRequest_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<int32_t>::stream(s, indent + "  ", v.number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XIHELM_PKG_MESSAGE_ODDEVENCHECKREQUEST_H
