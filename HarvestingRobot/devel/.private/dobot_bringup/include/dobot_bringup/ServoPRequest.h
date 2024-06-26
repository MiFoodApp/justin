// Generated by gencpp from file dobot_bringup/ServoPRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_SERVOPREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_SERVOPREQUEST_H


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
struct ServoPRequest_
{
  typedef ServoPRequest_<ContainerAllocator> Type;

  ServoPRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , a(0.0)
    , b(0.0)
    , c(0.0)  {
    }
  ServoPRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , a(0.0)
    , b(0.0)
    , c(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _a_type;
  _a_type a;

   typedef double _b_type;
  _b_type b;

   typedef double _c_type;
  _c_type c;





  typedef boost::shared_ptr< ::dobot_bringup::ServoPRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::ServoPRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServoPRequest_

typedef ::dobot_bringup::ServoPRequest_<std::allocator<void> > ServoPRequest;

typedef boost::shared_ptr< ::dobot_bringup::ServoPRequest > ServoPRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::ServoPRequest const> ServoPRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::ServoPRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::ServoPRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::ServoPRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::ServoPRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::ServoPRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::ServoPRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::ServoPRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::ServoPRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3496ba5f1a8a3758e00aeb5becb9a91a";
  }

  static const char* value(const ::dobot_bringup::ServoPRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3496ba5f1a8a3758ULL;
  static const uint64_t static_value2 = 0xe00aeb5becb9a91aULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/ServoPRequest";
  }

  static const char* value(const ::dobot_bringup::ServoPRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 a\n"
"float64 b\n"
"float64 c\n"
;
  }

  static const char* value(const ::dobot_bringup::ServoPRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoPRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::ServoPRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::ServoPRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "a: ";
    Printer<double>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<double>::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    Printer<double>::stream(s, indent + "  ", v.c);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_SERVOPREQUEST_H
