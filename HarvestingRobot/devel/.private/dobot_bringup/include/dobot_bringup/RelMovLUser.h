// Generated by gencpp from file dobot_bringup/RelMovLUser.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_RELMOVLUSER_H
#define DOBOT_BRINGUP_MESSAGE_RELMOVLUSER_H

#include <ros/service_traits.h>


#include <dobot_bringup/RelMovLUserRequest.h>
#include <dobot_bringup/RelMovLUserResponse.h>


namespace dobot_bringup
{

struct RelMovLUser
{

typedef RelMovLUserRequest Request;
typedef RelMovLUserResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RelMovLUser
} // namespace dobot_bringup


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot_bringup::RelMovLUser > {
  static const char* value()
  {
    return "7970102421ee401b86e32781f03dc410";
  }

  static const char* value(const ::dobot_bringup::RelMovLUser&) { return value(); }
};

template<>
struct DataType< ::dobot_bringup::RelMovLUser > {
  static const char* value()
  {
    return "dobot_bringup/RelMovLUser";
  }

  static const char* value(const ::dobot_bringup::RelMovLUser&) { return value(); }
};


// service_traits::MD5Sum< ::dobot_bringup::RelMovLUserRequest> should match
// service_traits::MD5Sum< ::dobot_bringup::RelMovLUser >
template<>
struct MD5Sum< ::dobot_bringup::RelMovLUserRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::RelMovLUser >::value();
  }
  static const char* value(const ::dobot_bringup::RelMovLUserRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::RelMovLUserRequest> should match
// service_traits::DataType< ::dobot_bringup::RelMovLUser >
template<>
struct DataType< ::dobot_bringup::RelMovLUserRequest>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::RelMovLUser >::value();
  }
  static const char* value(const ::dobot_bringup::RelMovLUserRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot_bringup::RelMovLUserResponse> should match
// service_traits::MD5Sum< ::dobot_bringup::RelMovLUser >
template<>
struct MD5Sum< ::dobot_bringup::RelMovLUserResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::RelMovLUser >::value();
  }
  static const char* value(const ::dobot_bringup::RelMovLUserResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::RelMovLUserResponse> should match
// service_traits::DataType< ::dobot_bringup::RelMovLUser >
template<>
struct DataType< ::dobot_bringup::RelMovLUserResponse>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::RelMovLUser >::value();
  }
  static const char* value(const ::dobot_bringup::RelMovLUserResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_RELMOVLUSER_H
