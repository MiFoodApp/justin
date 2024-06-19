// Generated by gencpp from file dobot_bringup/RelMovLUserRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_RELMOVLUSERREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_RELMOVLUSERREQUEST_H


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
struct RelMovLUserRequest_
{
  typedef RelMovLUserRequest_<ContainerAllocator> Type;

  RelMovLUserRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , rx(0.0)
    , ry(0.0)
    , rz(0.0)
    , user(0)
    , paramValue()  {
    }
  RelMovLUserRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , rx(0.0)
    , ry(0.0)
    , rz(0.0)
    , user(0)
    , paramValue(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _rx_type;
  _rx_type rx;

   typedef double _ry_type;
  _ry_type ry;

   typedef double _rz_type;
  _rz_type rz;

   typedef int32_t _user_type;
  _user_type user;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _paramValue_type;
  _paramValue_type paramValue;





  typedef boost::shared_ptr< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RelMovLUserRequest_

typedef ::dobot_bringup::RelMovLUserRequest_<std::allocator<void> > RelMovLUserRequest;

typedef boost::shared_ptr< ::dobot_bringup::RelMovLUserRequest > RelMovLUserRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::RelMovLUserRequest const> RelMovLUserRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.rx == rhs.rx &&
    lhs.ry == rhs.ry &&
    lhs.rz == rhs.rz &&
    lhs.user == rhs.user &&
    lhs.paramValue == rhs.paramValue;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1566c21cd6d19faa3c8a47f879f1b71b";
  }

  static const char* value(const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1566c21cd6d19faaULL;
  static const uint64_t static_value2 = 0x3c8a47f879f1b71bULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/RelMovLUserRequest";
  }

  static const char* value(const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 rx\n"
"float64 ry\n"
"float64 rz\n"
"int32 user\n"
"string[] paramValue\n"
"\n"
;
  }

  static const char* value(const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.rx);
      stream.next(m.ry);
      stream.next(m.rz);
      stream.next(m.user);
      stream.next(m.paramValue);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelMovLUserRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::RelMovLUserRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "rx: ";
    Printer<double>::stream(s, indent + "  ", v.rx);
    s << indent << "ry: ";
    Printer<double>::stream(s, indent + "  ", v.ry);
    s << indent << "rz: ";
    Printer<double>::stream(s, indent + "  ", v.rz);
    s << indent << "user: ";
    Printer<int32_t>::stream(s, indent + "  ", v.user);
    s << indent << "paramValue[]" << std::endl;
    for (size_t i = 0; i < v.paramValue.size(); ++i)
    {
      s << indent << "  paramValue[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.paramValue[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_RELMOVLUSERREQUEST_H
