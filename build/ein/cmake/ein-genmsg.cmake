# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ein: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iein:/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/indigo/share/shape_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ein_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" NAME_WE)
add_custom_target(_ein_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ein" "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" ""
)

get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" NAME_WE)
add_custom_target(_ein_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ein" "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" "object_recognition_msgs/RecognizedObject:shape_msgs/MeshTriangle:geometry_msgs/Quaternion:sensor_msgs/PointField:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:object_recognition_msgs/ObjectType:sensor_msgs/PointCloud2:std_msgs/Header:geometry_msgs/Pose:shape_msgs/Mesh:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ein
)
_generate_msg_cpp(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/RecognizedObject.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ein
)

### Generating Services

### Generating Module File
_generate_module_cpp(ein
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ein
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ein_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ein_generate_messages ein_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" NAME_WE)
add_dependencies(ein_generate_messages_cpp _ein_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" NAME_WE)
add_dependencies(ein_generate_messages_cpp _ein_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ein_gencpp)
add_dependencies(ein_gencpp ein_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ein_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ein
)
_generate_msg_eus(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/RecognizedObject.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ein
)

### Generating Services

### Generating Module File
_generate_module_eus(ein
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ein
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ein_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ein_generate_messages ein_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" NAME_WE)
add_dependencies(ein_generate_messages_eus _ein_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" NAME_WE)
add_dependencies(ein_generate_messages_eus _ein_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ein_geneus)
add_dependencies(ein_geneus ein_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ein_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ein
)
_generate_msg_lisp(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/RecognizedObject.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ein
)

### Generating Services

### Generating Module File
_generate_module_lisp(ein
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ein
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ein_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ein_generate_messages ein_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" NAME_WE)
add_dependencies(ein_generate_messages_lisp _ein_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" NAME_WE)
add_dependencies(ein_generate_messages_lisp _ein_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ein_genlisp)
add_dependencies(ein_genlisp ein_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ein_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein
)
_generate_msg_py(ein
  "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/RecognizedObject.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein
)

### Generating Services

### Generating Module File
_generate_module_py(ein
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ein_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ein_generate_messages ein_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinConsole.msg" NAME_WE)
add_dependencies(ein_generate_messages_py _ein_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/ein/msg/EinState.msg" NAME_WE)
add_dependencies(ein_generate_messages_py _ein_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ein_genpy)
add_dependencies(ein_genpy ein_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ein_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ein)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ein
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ein_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET object_recognition_msgs_generate_messages_cpp)
  add_dependencies(ein_generate_messages_cpp object_recognition_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ein)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ein
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ein_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET object_recognition_msgs_generate_messages_eus)
  add_dependencies(ein_generate_messages_eus object_recognition_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ein)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ein
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ein_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET object_recognition_msgs_generate_messages_lisp)
  add_dependencies(ein_generate_messages_lisp object_recognition_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ein
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ein_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET object_recognition_msgs_generate_messages_py)
  add_dependencies(ein_generate_messages_py object_recognition_msgs_generate_messages_py)
endif()
