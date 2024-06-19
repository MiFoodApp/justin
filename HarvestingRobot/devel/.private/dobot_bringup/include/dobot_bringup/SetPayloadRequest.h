// Generated by gencpp from file dobot_bringup/SetPayloadRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_SETPAYLOADREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_SETPAYLOADREQUEST_H


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
struct SetPayloadRequest_
{
  typedef SetPayloadRequest_<ContainerAllocator> Type;

  SetPayloadRequest_()
    : load(0.0)  {
    }
  SetPayloadRequest_(const ContainerAllocator& _alloc)
    : load(0.0)  {
  (void)_alloc;
    }



   typedef double _load_type;
  _load_type load;





  typedef boost::shared_ptr< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPayloadRequest_

typedef ::dobot_bringup::SetPayloadRequest_<std::allocator<void> > SetPayloadRequest;

typedef boost::shared_ptr< ::dobot_bringup::SetPayloadRequest > SetPayloadRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::SetPayloadRequest const> SetPayloadRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator2> & rhs)
{
  return lhs.load == rhs.load;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee67a29bbb1500ef643f8fec2bb04bc6";
  }

  static const char* value(const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee67a29bbb1500efULL;
  static const uint64_t static_value2 = 0x643f8fec2bb04bc6ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/SetPayloadRequest";
  }

  static const char* value(const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 load\n"
;
  }

  static const char* value(const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.load);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPayloadRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::SetPayloadRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::SetPayloadRequest_<ContainerAllocator>& v)
  {
    s << indent << "load: ";
    Printer<double>::stream(s, indent + "  ", v.load);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_SETPAYLOADREQUEST_H
