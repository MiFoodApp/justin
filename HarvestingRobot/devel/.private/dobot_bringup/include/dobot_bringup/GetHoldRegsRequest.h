// Generated by gencpp from file dobot_bringup/GetHoldRegsRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_GETHOLDREGSREQUEST_H
#define DOBOT_BRINGUP_MESSAGE_GETHOLDREGSREQUEST_H


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
struct GetHoldRegsRequest_
{
  typedef GetHoldRegsRequest_<ContainerAllocator> Type;

  GetHoldRegsRequest_()
    : index(0)
    , addr(0)
    , count(0)
    , valtype()  {
    }
  GetHoldRegsRequest_(const ContainerAllocator& _alloc)
    : index(0)
    , addr(0)
    , count(0)
    , valtype(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _index_type;
  _index_type index;

   typedef int32_t _addr_type;
  _addr_type addr;

   typedef int32_t _count_type;
  _count_type count;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _valtype_type;
  _valtype_type valtype;





  typedef boost::shared_ptr< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetHoldRegsRequest_

typedef ::dobot_bringup::GetHoldRegsRequest_<std::allocator<void> > GetHoldRegsRequest;

typedef boost::shared_ptr< ::dobot_bringup::GetHoldRegsRequest > GetHoldRegsRequestPtr;
typedef boost::shared_ptr< ::dobot_bringup::GetHoldRegsRequest const> GetHoldRegsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.index == rhs.index &&
    lhs.addr == rhs.addr &&
    lhs.count == rhs.count &&
    lhs.valtype == rhs.valtype;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator1> & lhs, const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot_bringup

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a31c071fa7b97a593b80a7d8ffc63e3";
  }

  static const char* value(const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a31c071fa7b97a5ULL;
  static const uint64_t static_value2 = 0x93b80a7d8ffc63e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot_bringup/GetHoldRegsRequest";
  }

  static const char* value(const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 index\n"
"int32 addr\n"
"int32 count\n"
"string[] valtype\n"
;
  }

  static const char* value(const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.addr);
      stream.next(m.count);
      stream.next(m.valtype);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetHoldRegsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot_bringup::GetHoldRegsRequest_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.index);
    s << indent << "addr: ";
    Printer<int32_t>::stream(s, indent + "  ", v.addr);
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
    s << indent << "valtype[]" << std::endl;
    for (size_t i = 0; i < v.valtype.size(); ++i)
    {
      s << indent << "  valtype[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.valtype[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_GETHOLDREGSREQUEST_H
