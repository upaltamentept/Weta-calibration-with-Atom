// Generated by gencpp from file atom_msgs/ImageWithRGBLabels.msg
// DO NOT EDIT!


#ifndef ATOM_MSGS_MESSAGE_IMAGEWITHRGBLABELS_H
#define ATOM_MSGS_MESSAGE_IMAGEWITHRGBLABELS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>
#include <atom_msgs/RGBLabels.h>

namespace atom_msgs
{
template <class ContainerAllocator>
struct ImageWithRGBLabels_
{
  typedef ImageWithRGBLabels_<ContainerAllocator> Type;

  ImageWithRGBLabels_()
    : header()
    , image()
    , patterns()  {
    }
  ImageWithRGBLabels_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , image(_alloc)
    , patterns(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef std::vector< ::atom_msgs::RGBLabels_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::atom_msgs::RGBLabels_<ContainerAllocator> >> _patterns_type;
  _patterns_type patterns;





  typedef boost::shared_ptr< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> const> ConstPtr;

}; // struct ImageWithRGBLabels_

typedef ::atom_msgs::ImageWithRGBLabels_<std::allocator<void> > ImageWithRGBLabels;

typedef boost::shared_ptr< ::atom_msgs::ImageWithRGBLabels > ImageWithRGBLabelsPtr;
typedef boost::shared_ptr< ::atom_msgs::ImageWithRGBLabels const> ImageWithRGBLabelsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator1> & lhs, const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.image == rhs.image &&
    lhs.patterns == rhs.patterns;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator1> & lhs, const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace atom_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e18c48e51f3f491f008a5d4fdf0bffab";
  }

  static const char* value(const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe18c48e51f3f491fULL;
  static const uint64_t static_value2 = 0x008a5d4fdf0bffabULL;
};

template<class ContainerAllocator>
struct DataType< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "atom_msgs/ImageWithRGBLabels";
  }

  static const char* value(const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"sensor_msgs/Image image\n"
"RGBLabels[] patterns\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: atom_msgs/RGBLabels\n"
"string pattern_name\n"
"bool detected\n"
"Detection2D[] idxs\n"
"\n"
"================================================================================\n"
"MSG: atom_msgs/Detection2D\n"
"float32 x\n"
"float32 y\n"
"uint32 id\n"
"\n"
;
  }

  static const char* value(const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.image);
      stream.next(m.patterns);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImageWithRGBLabels_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::atom_msgs::ImageWithRGBLabels_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "patterns[]" << std::endl;
    for (size_t i = 0; i < v.patterns.size(); ++i)
    {
      s << indent << "  patterns[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::atom_msgs::RGBLabels_<ContainerAllocator> >::stream(s, indent + "    ", v.patterns[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATOM_MSGS_MESSAGE_IMAGEWITHRGBLABELS_H
