// Generated by gencpp from file dobot_bringup/MovL.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_MOVL_H
#define DOBOT_BRINGUP_MESSAGE_MOVL_H

#include <ros/service_traits.h>


#include <dobot_bringup/MovLRequest.h>
#include <dobot_bringup/MovLResponse.h>


namespace dobot_bringup
{

struct MovL
{

typedef MovLRequest Request;
typedef MovLResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MovL
} // namespace dobot_bringup


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot_bringup::MovL > {
  static const char* value()
  {
    return "4c865d064beeb78c6b96e5e5798d8d9f";
  }

  static const char* value(const ::dobot_bringup::MovL&) { return value(); }
};

template<>
struct DataType< ::dobot_bringup::MovL > {
  static const char* value()
  {
    return "dobot_bringup/MovL";
  }

  static const char* value(const ::dobot_bringup::MovL&) { return value(); }
};


// service_traits::MD5Sum< ::dobot_bringup::MovLRequest> should match
// service_traits::MD5Sum< ::dobot_bringup::MovL >
template<>
struct MD5Sum< ::dobot_bringup::MovLRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::MovL >::value();
  }
  static const char* value(const ::dobot_bringup::MovLRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::MovLRequest> should match
// service_traits::DataType< ::dobot_bringup::MovL >
template<>
struct DataType< ::dobot_bringup::MovLRequest>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::MovL >::value();
  }
  static const char* value(const ::dobot_bringup::MovLRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot_bringup::MovLResponse> should match
// service_traits::MD5Sum< ::dobot_bringup::MovL >
template<>
struct MD5Sum< ::dobot_bringup::MovLResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::MovL >::value();
  }
  static const char* value(const ::dobot_bringup::MovLResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::MovLResponse> should match
// service_traits::DataType< ::dobot_bringup::MovL >
template<>
struct DataType< ::dobot_bringup::MovLResponse>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::MovL >::value();
  }
  static const char* value(const ::dobot_bringup::MovLResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_MOVL_H
