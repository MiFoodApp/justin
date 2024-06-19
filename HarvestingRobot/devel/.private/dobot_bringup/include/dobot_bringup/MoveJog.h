// Generated by gencpp from file dobot_bringup/MoveJog.msg
// DO NOT EDIT!


#ifndef DOBOT_BRINGUP_MESSAGE_MOVEJOG_H
#define DOBOT_BRINGUP_MESSAGE_MOVEJOG_H

#include <ros/service_traits.h>


#include <dobot_bringup/MoveJogRequest.h>
#include <dobot_bringup/MoveJogResponse.h>


namespace dobot_bringup
{

struct MoveJog
{

typedef MoveJogRequest Request;
typedef MoveJogResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveJog
} // namespace dobot_bringup


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot_bringup::MoveJog > {
  static const char* value()
  {
    return "319211ff13c695539e6dfdbf43aeb58b";
  }

  static const char* value(const ::dobot_bringup::MoveJog&) { return value(); }
};

template<>
struct DataType< ::dobot_bringup::MoveJog > {
  static const char* value()
  {
    return "dobot_bringup/MoveJog";
  }

  static const char* value(const ::dobot_bringup::MoveJog&) { return value(); }
};


// service_traits::MD5Sum< ::dobot_bringup::MoveJogRequest> should match
// service_traits::MD5Sum< ::dobot_bringup::MoveJog >
template<>
struct MD5Sum< ::dobot_bringup::MoveJogRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::MoveJog >::value();
  }
  static const char* value(const ::dobot_bringup::MoveJogRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::MoveJogRequest> should match
// service_traits::DataType< ::dobot_bringup::MoveJog >
template<>
struct DataType< ::dobot_bringup::MoveJogRequest>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::MoveJog >::value();
  }
  static const char* value(const ::dobot_bringup::MoveJogRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot_bringup::MoveJogResponse> should match
// service_traits::MD5Sum< ::dobot_bringup::MoveJog >
template<>
struct MD5Sum< ::dobot_bringup::MoveJogResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot_bringup::MoveJog >::value();
  }
  static const char* value(const ::dobot_bringup::MoveJogResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot_bringup::MoveJogResponse> should match
// service_traits::DataType< ::dobot_bringup::MoveJog >
template<>
struct DataType< ::dobot_bringup::MoveJogResponse>
{
  static const char* value()
  {
    return DataType< ::dobot_bringup::MoveJog >::value();
  }
  static const char* value(const ::dobot_bringup::MoveJogResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_BRINGUP_MESSAGE_MOVEJOG_H
