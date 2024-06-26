// Generated by gencpp from file dobot_bringup/GetPathStartPoseRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_GETPATHSTARTPOSEREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_GETPATHSTARTPOSEREQUEST_H


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
struct GetPathStartPoseRequest_
{
  typedef GetPathStartPoseRequest_<ContainerAllocator> Type;

  GetPathStartPoseRequest_()
    : traceName()  {
    }
  GetPathStartPoseRequest_(const ContainerAllocator& _alloc)
    : traceName(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _traceName_type;
  _traceName_type traceName;





  typedef boost::shared_ptr< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPathStartPoseRequest_

typedef ::dobot_bringup::GetPathStartPoseRequest_<std::allocator<void> > GetPathStartPoseRequest;

typedef boost::shared_ptr< ::dobot_bringup::GetPathStartPoseRequest > GetPathStartPoseRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::GetPathStartPoseRequest const> GetPathStartPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.traceName == rhs.traceName;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2509f3cb4d70960bf00043cebb91e3b7";
  }

  static const char* value(const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2509f3cb4d70960bULL;
  static const uint64_t static_value2 = 0xf00043cebb91e3b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/GetPathStartPoseRequest";
  }

  static const char* value(const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  traceName\n"
;
  }

  static const char* value(const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.traceName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPathStartPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::GetPathStartPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "traceName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.traceName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_GETPATHSTARTPOSEREQUEST_H
