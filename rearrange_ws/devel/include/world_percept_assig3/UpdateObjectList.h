// Generated by gencpp from file world_percept_assig3/UpdateObjectList.msg
// DO NOT EDIT!


#ifndef WORLD_PERCEPT_ASSIG3_MESSAGE_UPDATEOBJECTLIST_H
#define WORLD_PERCEPT_ASSIG3_MESSAGE_UPDATEOBJECTLIST_H

#include <ros/service_traits.h>


#include <world_percept_assig3/UpdateObjectListRequest.h>
#include <world_percept_assig3/UpdateObjectListResponse.h>


namespace world_percept_assig3
{

struct UpdateObjectList
{

typedef UpdateObjectListRequest Request;
typedef UpdateObjectListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UpdateObjectList
} // namespace world_percept_assig3


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::world_percept_assig3::UpdateObjectList > {
  static const char* value()
  {
    return "07fb332925eec5f4d2f3c7b2da4de91d";
  }

  static const char* value(const ::world_percept_assig3::UpdateObjectList&) { return value(); }
};

template<>
struct DataType< ::world_percept_assig3::UpdateObjectList > {
  static const char* value()
  {
    return "world_percept_assig3/UpdateObjectList";
  }

  static const char* value(const ::world_percept_assig3::UpdateObjectList&) { return value(); }
};


// service_traits::MD5Sum< ::world_percept_assig3::UpdateObjectListRequest> should match
// service_traits::MD5Sum< ::world_percept_assig3::UpdateObjectList >
template<>
struct MD5Sum< ::world_percept_assig3::UpdateObjectListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::world_percept_assig3::UpdateObjectList >::value();
  }
  static const char* value(const ::world_percept_assig3::UpdateObjectListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_percept_assig3::UpdateObjectListRequest> should match
// service_traits::DataType< ::world_percept_assig3::UpdateObjectList >
template<>
struct DataType< ::world_percept_assig3::UpdateObjectListRequest>
{
  static const char* value()
  {
    return DataType< ::world_percept_assig3::UpdateObjectList >::value();
  }
  static const char* value(const ::world_percept_assig3::UpdateObjectListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::world_percept_assig3::UpdateObjectListResponse> should match
// service_traits::MD5Sum< ::world_percept_assig3::UpdateObjectList >
template<>
struct MD5Sum< ::world_percept_assig3::UpdateObjectListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::world_percept_assig3::UpdateObjectList >::value();
  }
  static const char* value(const ::world_percept_assig3::UpdateObjectListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_percept_assig3::UpdateObjectListResponse> should match
// service_traits::DataType< ::world_percept_assig3::UpdateObjectList >
template<>
struct DataType< ::world_percept_assig3::UpdateObjectListResponse>
{
  static const char* value()
  {
    return DataType< ::world_percept_assig3::UpdateObjectList >::value();
  }
  static const char* value(const ::world_percept_assig3::UpdateObjectListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WORLD_PERCEPT_ASSIG3_MESSAGE_UPDATEOBJECTLIST_H
