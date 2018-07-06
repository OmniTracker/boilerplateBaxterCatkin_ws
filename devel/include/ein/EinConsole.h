// Generated by gencpp from file ein/EinConsole.msg
// DO NOT EDIT!


#ifndef EIN_MESSAGE_EINCONSOLE_H
#define EIN_MESSAGE_EINCONSOLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ein
{
template <class ContainerAllocator>
struct EinConsole_
{
  typedef EinConsole_<ContainerAllocator> Type;

  EinConsole_()
    : msg()  {
    }
  EinConsole_(const ContainerAllocator& _alloc)
    : msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;




  typedef boost::shared_ptr< ::ein::EinConsole_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ein::EinConsole_<ContainerAllocator> const> ConstPtr;

}; // struct EinConsole_

typedef ::ein::EinConsole_<std::allocator<void> > EinConsole;

typedef boost::shared_ptr< ::ein::EinConsole > EinConsolePtr;
typedef boost::shared_ptr< ::ein::EinConsole const> EinConsoleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ein::EinConsole_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ein::EinConsole_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ein

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/indigo/share/shape_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'ein': ['/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ein::EinConsole_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ein::EinConsole_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ein::EinConsole_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ein::EinConsole_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ein::EinConsole_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ein::EinConsole_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ein::EinConsole_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d96ed730776804754140b85e64c862e";
  }

  static const char* value(const ::ein::EinConsole_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d96ed7307768047ULL;
  static const uint64_t static_value2 = 0x54140b85e64c862eULL;
};

template<class ContainerAllocator>
struct DataType< ::ein::EinConsole_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ein/EinConsole";
  }

  static const char* value(const ::ein::EinConsole_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ein::EinConsole_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string msg\n\
";
  }

  static const char* value(const ::ein::EinConsole_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ein::EinConsole_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EinConsole_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ein::EinConsole_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ein::EinConsole_<ContainerAllocator>& v)
  {
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EIN_MESSAGE_EINCONSOLE_H