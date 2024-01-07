// Generated by gencpp from file rearrange/SetInitTiagoPoseResponse.msg
// DO NOT EDIT!


#ifndef REARRANGE_MESSAGE_SETINITTIAGOPOSERESPONSE_H
#define REARRANGE_MESSAGE_SETINITTIAGOPOSERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rearrange
{
template <class ContainerAllocator>
struct SetInitTiagoPoseResponse_
{
  typedef SetInitTiagoPoseResponse_<ContainerAllocator> Type;

  SetInitTiagoPoseResponse_()
    : confirmation(false)  {
    }
  SetInitTiagoPoseResponse_(const ContainerAllocator& _alloc)
    : confirmation(false)  {
  (void)_alloc;
    }



   typedef uint8_t _confirmation_type;
  _confirmation_type confirmation;





  typedef boost::shared_ptr< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetInitTiagoPoseResponse_

typedef ::rearrange::SetInitTiagoPoseResponse_<std::allocator<void> > SetInitTiagoPoseResponse;

typedef boost::shared_ptr< ::rearrange::SetInitTiagoPoseResponse > SetInitTiagoPoseResponsePtr;
typedef boost::shared_ptr< ::rearrange::SetInitTiagoPoseResponse const> SetInitTiagoPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator1> & lhs, const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.confirmation == rhs.confirmation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator1> & lhs, const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rearrange

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f27299616d4eae5b55699f532a896283";
  }

  static const char* value(const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf27299616d4eae5bULL;
  static const uint64_t static_value2 = 0x55699f532a896283ULL;
};

template<class ContainerAllocator>
struct DataType< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rearrange/SetInitTiagoPoseResponse";
  }

  static const char* value(const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool confirmation\n"
;
  }

  static const char* value(const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.confirmation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetInitTiagoPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rearrange::SetInitTiagoPoseResponse_<ContainerAllocator>& v)
  {
    s << indent << "confirmation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.confirmation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REARRANGE_MESSAGE_SETINITTIAGOPOSERESPONSE_H
