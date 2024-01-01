# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "world_percept_assig3: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Igazebo_msgs:/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(world_percept_assig3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose:gazebo_msgs/ModelStates"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_custom_target(_world_percept_assig3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_percept_assig3" "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_cpp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_cpp(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(world_percept_assig3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_cpp _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_gencpp)
add_dependencies(world_percept_assig3_gencpp world_percept_assig3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_eus(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_eus(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(world_percept_assig3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_eus _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_geneus)
add_dependencies(world_percept_assig3_geneus world_percept_assig3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_lisp(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_lisp(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(world_percept_assig3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_lisp _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_genlisp)
add_dependencies(world_percept_assig3_genlisp world_percept_assig3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_nodejs(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_nodejs(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(world_percept_assig3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_nodejs _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_gennodejs)
add_dependencies(world_percept_assig3_gennodejs world_percept_assig3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages

### Generating Services
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_owl(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_owl(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(world_percept_assig3_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_owl _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_genowl)
add_dependencies(world_percept_assig3_genowl world_percept_assig3_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)
_generate_srv_py(world_percept_assig3
  "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
)

### Generating Module File
_generate_module_py(world_percept_assig3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(world_percept_assig3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(world_percept_assig3_generate_messages world_percept_assig3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/LoadKnowledge.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/GoToObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/SendGoal.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/srv/ProcessObject.srv" NAME_WE)
add_dependencies(world_percept_assig3_generate_messages_py _world_percept_assig3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_percept_assig3_genpy)
add_dependencies(world_percept_assig3_genpy world_percept_assig3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_percept_assig3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(world_percept_assig3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(world_percept_assig3_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(world_percept_assig3_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(world_percept_assig3_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(world_percept_assig3_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(world_percept_assig3_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(world_percept_assig3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(world_percept_assig3_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(world_percept_assig3_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(world_percept_assig3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(world_percept_assig3_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(world_percept_assig3_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_owl)
  add_dependencies(world_percept_assig3_generate_messages_owl std_msgs_generate_messages_owl)
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(world_percept_assig3_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()
if(TARGET gazebo_msgs_generate_messages_owl)
  add_dependencies(world_percept_assig3_generate_messages_owl gazebo_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_percept_assig3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(world_percept_assig3_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(world_percept_assig3_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(world_percept_assig3_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
