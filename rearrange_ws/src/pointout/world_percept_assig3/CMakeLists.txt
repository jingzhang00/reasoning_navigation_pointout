cmake_minimum_required(VERSION 3.0.2)
project(world_percept_assig3)

# find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  gazebo_msgs
  tf
  tf2
  tf2_ros
  message_generation
  message_runtime
  rosprolog
  moveit_core
  moveit_ros_planning_interface
)

# Eigen3
find_package(Eigen3 REQUIRED)

# srv
add_service_files(
  FILES
  UpdateObjectList.srv
  SetInitTiagoPose.srv
  GetSceneObjectList.srv
  LoadKnowledge.srv
  GoToObject.srv
  SendGoal.srv
)

# 
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  gazebo_msgs
)

# catkin
catkin_package(
  CATKIN_DEPENDS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  gazebo_msgs
  tf
  tf2
  tf2_ros
  message_runtime
  rosprolog
  moveit_core
  moveit_ros_planning_interface
  DEPENDS EIGEN3
)

# SWI Prolog
find_package(PkgConfig)
pkg_check_modules(SWIPL REQUIRED swipl)
include_directories(
  ${SWIPL_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIRS}
)
link_directories(${SWIPL_LIBRARY_DIRS})


#for python scripts
catkin_install_python(PROGRAMS scripts/goal_topic_test.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)



# percept_node
add_executable(percept_node src/percept_node.cpp)
add_dependencies(percept_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(percept_node ${catkin_LIBRARIES} ${roscpp_LIBRARIES})

#direct_percept_node
add_executable(direct_percept_node src/direct_percept_node.cpp)
add_dependencies(direct_percept_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(direct_percept_node ${catkin_LIBRARIES} ${roscpp_LIBRARIES})

#map_generator_node
add_executable(map_generator_node src/map_generator_node.cpp)
add_dependencies(map_generator_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(map_generator_node ${catkin_LIBRARIES} ${roscpp_LIBRARIES})

#reasoning_node
add_executable(reasoning_node src/reasoning_node.cpp)
add_dependencies(reasoning_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(reasoning_node ${catkin_LIBRARIES})

#knowledge_node
add_executable(knowledge_node src/knowledge_node.cpp)
add_dependencies(knowledge_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(knowledge_node ${catkin_LIBRARIES} ${roscpp_LIBRARIES})

#tiago_control_node
add_executable(tiago_control_node src/tiago_control_node.cpp)
add_dependencies(tiago_control_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(tiago_control_node ${catkin_LIBRARIES} ${EIGEN3_LIBRARIES} ${roscpp_LIBRARIES})

#tiago_moveit_node
add_executable(tiago_moveit_node src/tiago_moveit_node.cpp)
add_dependencies(tiago_moveit_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(tiago_moveit_node ${catkin_LIBRARIES} ${EIGEN3_LIBRARIES} ${roscpp_LIBRARIES})
