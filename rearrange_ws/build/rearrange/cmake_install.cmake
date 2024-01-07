# Install script for directory: /home/user/exchange/ssy236_project/rearrange_ws/src/rearrange

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/user/exchange/ssy236_project/rearrange_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/srv" TYPE FILE FILES
    "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/UpdateObjectList.srv"
    "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/SetInitTiagoPose.srv"
    "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/srv/GetSceneObjectList.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/action" TYPE FILE FILES "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/action/NavigateDrink.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/msg" TYPE FILE FILES
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkAction.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionGoal.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionResult.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkActionFeedback.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkGoal.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkResult.msg"
    "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/rearrange/msg/NavigateDrinkFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/cmake" TYPE FILE FILES "/home/user/exchange/ssy236_project/rearrange_ws/build/rearrange/catkin_generated/installspace/rearrange-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/user/exchange/ssy236_project/rearrange_ws/devel/include/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/roseus/ros/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/common-lisp/ros/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/user/exchange/ssy236_project/rearrange_ws/devel/share/gennodejs/ros/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/user/exchange/ssy236_project/rearrange_ws/devel/lib/python3/dist-packages/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/user/exchange/ssy236_project/rearrange_ws/devel/lib/python3/dist-packages/rearrange")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/user/exchange/ssy236_project/rearrange_ws/build/rearrange/catkin_generated/installspace/rearrange.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/cmake" TYPE FILE FILES "/home/user/exchange/ssy236_project/rearrange_ws/build/rearrange/catkin_generated/installspace/rearrange-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange/cmake" TYPE FILE FILES
    "/home/user/exchange/ssy236_project/rearrange_ws/build/rearrange/catkin_generated/installspace/rearrangeConfig.cmake"
    "/home/user/exchange/ssy236_project/rearrange_ws/build/rearrange/catkin_generated/installspace/rearrangeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rearrange" TYPE FILE FILES "/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/package.xml")
endif()

