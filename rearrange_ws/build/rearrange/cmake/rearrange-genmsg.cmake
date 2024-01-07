# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rearrange: 7 messages, 3 services")

set(MSG_I_FLAGS "-Irearrange:/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Igazebo_msgs:/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rearrange_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" "actionlib_msgs/GoalStatus:rearrange/NavigateDrinkActionResult:rearrange/NavigateDrinkResult:rearrange/NavigateDrinkActionFeedback:rearrange/NavigateDrinkActionGoal:rearrange/NavigateDrinkFeedback:std_msgs/Header:actionlib_msgs/GoalID:rearrange/NavigateDrinkGoal"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:rearrange/NavigateDrinkGoal"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:rearrange/NavigateDrinkResult"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:rearrange/NavigateDrinkFeedback"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" ""
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_custom_target(_rearrange_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rearrange" "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" "geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Pose:gazebo_msgs/ModelStates:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_msg_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_srv_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)
_generate_srv_cpp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_cpp(rearrange
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rearrange_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_cpp _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_gencpp)
add_dependencies(rearrange_gencpp rearrange_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_msg_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_srv_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)
_generate_srv_eus(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_eus(rearrange
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rearrange_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_eus _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_geneus)
add_dependencies(rearrange_geneus rearrange_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_msg_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_srv_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)
_generate_srv_lisp(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_lisp(rearrange
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rearrange_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_lisp _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_genlisp)
add_dependencies(rearrange_genlisp rearrange_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_msg_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_srv_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)
_generate_srv_nodejs(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_nodejs(rearrange
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rearrange_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_nodejs _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_gennodejs)
add_dependencies(rearrange_gennodejs rearrange_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_msg_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_srv_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)
_generate_srv_owl(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_owl(rearrange
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(rearrange_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_owl _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_genowl)
add_dependencies(rearrange_genowl rearrange_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_msg_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)

### Generating Services
_generate_srv_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_srv_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)
_generate_srv_py(rearrange
  "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/tiago_public_ws/src/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
)

### Generating Module File
_generate_module_py(rearrange
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rearrange_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rearrange_generate_messages rearrange_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv" NAME_WE)
add_dependencies(rearrange_generate_messages_py _rearrange_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rearrange_genpy)
add_dependencies(rearrange_genpy rearrange_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rearrange_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rearrange
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rearrange_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rearrange_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(rearrange_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rearrange_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rearrange
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rearrange_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rearrange_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(rearrange_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rearrange_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rearrange
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rearrange_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rearrange_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(rearrange_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rearrange_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rearrange
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rearrange_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rearrange_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(rearrange_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rearrange_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rearrange
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_owl)
  add_dependencies(rearrange_generate_messages_owl std_msgs_generate_messages_owl)
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(rearrange_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()
if(TARGET gazebo_msgs_generate_messages_owl)
  add_dependencies(rearrange_generate_messages_owl gazebo_msgs_generate_messages_owl)
endif()
if(TARGET actionlib_msgs_generate_messages_owl)
  add_dependencies(rearrange_generate_messages_owl actionlib_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rearrange
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rearrange_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rearrange_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(rearrange_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rearrange_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
