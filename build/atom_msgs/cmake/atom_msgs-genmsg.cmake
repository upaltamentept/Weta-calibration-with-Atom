# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "atom_msgs: 7 messages, 8 services")

set(MSG_I_FLAGS "-Iatom_msgs:/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(atom_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" "atom_msgs/RGBLabels:atom_msgs/Detection2D:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" "atom_msgs/Detection2D"
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" "atom_msgs/Lidar3DLabels:sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" "atom_msgs/DepthLabels:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" ""
)

get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_custom_target(_atom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atom_msgs" "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg;/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_msg_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)

### Generating Services
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)
_generate_srv_cpp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
)

### Generating Module File
_generate_module_cpp(atom_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(atom_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(atom_msgs_generate_messages atom_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_cpp _atom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atom_msgs_gencpp)
add_dependencies(atom_msgs_gencpp atom_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atom_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg;/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_msg_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)

### Generating Services
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)
_generate_srv_eus(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
)

### Generating Module File
_generate_module_eus(atom_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(atom_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(atom_msgs_generate_messages atom_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_eus _atom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atom_msgs_geneus)
add_dependencies(atom_msgs_geneus atom_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atom_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg;/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_msg_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)

### Generating Services
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)
_generate_srv_lisp(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
)

### Generating Module File
_generate_module_lisp(atom_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(atom_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(atom_msgs_generate_messages atom_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_lisp _atom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atom_msgs_genlisp)
add_dependencies(atom_msgs_genlisp atom_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atom_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg;/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_msg_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)

### Generating Services
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)
_generate_srv_nodejs(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
)

### Generating Module File
_generate_module_nodejs(atom_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(atom_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(atom_msgs_generate_messages atom_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_nodejs _atom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atom_msgs_gennodejs)
add_dependencies(atom_msgs_gennodejs atom_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atom_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg;/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg"
  "${MSG_I_FLAGS}"
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_msg_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)

### Generating Services
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)
_generate_srv_py(atom_msgs
  "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
)

### Generating Module File
_generate_module_py(atom_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(atom_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(atom_msgs_generate_messages atom_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/ImageWithRGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/RGBLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Detection2D.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/PointCloudWithLidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/Lidar3DLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthImageWithDepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/msg/DepthLabels.msg" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetSensorInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetAdditionalTfsInteractiveMarker.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/GetDataset.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/SaveCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/DeleteCollection.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pedro/ros/workspaces/atom/src/atom/atom_msgs/srv/ToggleAutomaticDataCollector.srv" NAME_WE)
add_dependencies(atom_msgs_generate_messages_py _atom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atom_msgs_genpy)
add_dependencies(atom_msgs_genpy atom_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atom_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atom_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(atom_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(atom_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atom_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(atom_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(atom_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atom_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(atom_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(atom_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atom_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(atom_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(atom_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atom_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(atom_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(atom_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
