// Generated by gencpp from file tf2_web_republisher/RepublishTFsRequest.msg
// DO NOT EDIT!


#ifndef TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFSREQUEST_H
#define TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tf2_web_republisher
{
template <class ContainerAllocator>
struct RepublishTFsRequest_
{
  typedef RepublishTFsRequest_<ContainerAllocator> Type;

  RepublishTFsRequest_()
    : source_frames()
    , target_frame()
    , angular_thres(0.0)
    , trans_thres(0.0)
    , rate(0.0)
    , timeout()  {
    }
  RepublishTFsRequest_(const ContainerAllocator& _alloc)
    : source_frames(_alloc)
    , target_frame(_alloc)
    , angular_thres(0.0)
    , trans_thres(0.0)
    , rate(0.0)
    , timeout()  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _source_frames_type;
  _source_frames_type source_frames;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _target_frame_type;
  _target_frame_type target_frame;

   typedef float _angular_thres_type;
  _angular_thres_type angular_thres;

   typedef float _trans_thres_type;
  _trans_thres_type trans_thres;

   typedef float _rate_type;
  _rate_type rate;

   typedef ros::Duration _timeout_type;
  _timeout_type timeout;




  typedef boost::shared_ptr< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RepublishTFsRequest_

typedef ::tf2_web_republisher::RepublishTFsRequest_<std::allocator<void> > RepublishTFsRequest;

typedef boost::shared_ptr< ::tf2_web_republisher::RepublishTFsRequest > RepublishTFsRequestPtr;
typedef boost::shared_ptr< ::tf2_web_republisher::RepublishTFsRequest const> RepublishTFsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tf2_web_republisher

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'tf2_web_republisher': ['/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/devel/share/tf2_web_republisher/msg', '/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/tf2_web_republisher/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f13b5a5a70ee41b437384d6715cbcd91";
  }

  static const char* value(const ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf13b5a5a70ee41b4ULL;
  static const uint64_t static_value2 = 0x37384d6715cbcd91ULL;
};

template<class ContainerAllocator>
struct DataType< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tf2_web_republisher/RepublishTFsRequest";
  }

  static const char* value(const ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
string[] source_frames\n\
string target_frame\n\
float32 angular_thres\n\
float32 trans_thres\n\
float32 rate\n\
duration timeout\n\
";
  }

  static const char* value(const ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.source_frames);
      stream.next(m.target_frame);
      stream.next(m.angular_thres);
      stream.next(m.trans_thres);
      stream.next(m.rate);
      stream.next(m.timeout);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RepublishTFsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tf2_web_republisher::RepublishTFsRequest_<ContainerAllocator>& v)
  {
    s << indent << "source_frames[]" << std::endl;
    for (size_t i = 0; i < v.source_frames.size(); ++i)
    {
      s << indent << "  source_frames[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.source_frames[i]);
    }
    s << indent << "target_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.target_frame);
    s << indent << "angular_thres: ";
    Printer<float>::stream(s, indent + "  ", v.angular_thres);
    s << indent << "trans_thres: ";
    Printer<float>::stream(s, indent + "  ", v.trans_thres);
    s << indent << "rate: ";
    Printer<float>::stream(s, indent + "  ", v.rate);
    s << indent << "timeout: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.timeout);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFSREQUEST_H
