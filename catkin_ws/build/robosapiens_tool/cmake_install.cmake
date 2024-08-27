# Install script for directory: /home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool/msg" TYPE FILE FILES
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool/cmake" TYPE FILE FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool/catkin_generated/installspace/robosapiens_tool-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/include/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/share/roseus/ros/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/share/common-lisp/ros/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/share/gennodejs/ros/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/lib/python3/dist-packages/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/devel/lib/python3/dist-packages/robosapiens_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool/catkin_generated/installspace/robosapiens_tool.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool/cmake" TYPE FILE FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool/catkin_generated/installspace/robosapiens_tool-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool/cmake" TYPE FILE FILES
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool/catkin_generated/installspace/robosapiens_toolConfig.cmake"
    "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool/catkin_generated/installspace/robosapiens_toolConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool" TYPE FILE FILES "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/src/robosapiens_tool/package.xml")
endif()

