// Generated by gencpp from file dobot_bringup/SetTerminalKeysRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_SETTERMINALKEYSREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_SETTERMINALKEYSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dobot_bringup
{
template <class ContainerAllocator>
struct SetTerminalKeysRequest_
{
  typedef SetTerminalKeysRequest_<ContainerAllocator> Type;

  SetTerminalKeysRequest_()
    : status(0)  {
    }
  SetTerminalKeysRequest_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTerminalKeysRequest_

typedef ::dobot_bringup::SetTerminalKeysRequest_<std::allocator<void> > SetTerminalKeysRequest;

typedef boost::shared_ptr< ::dobot_bringup::SetTerminalKeysRequest > SetTerminalKeysRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::SetTerminalKeysRequest const> SetTerminalKeysRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86791dcf1de997ec7de5a0de7e4dcfcc";
  }

  static const char* value(const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86791dcf1de997ecULL;
  static const uint64_t static_value2 = 0x7de5a0de7e4dcfccULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/SetTerminalKeysRequest";
  }

  static const char* value(const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
;
  }

  static const char* value(const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTerminalKeysRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::SetTerminalKeysRequest_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_SETTERMINALKEYSREQUEST_H
