# Install script for directory: /home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool_utils

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/install")
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
  include("/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/installspace/robosapiens_tool_utils.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool_utils/cmake" TYPE FILE FILES
    "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/installspace/robosapiens_tool_utilsConfig.cmake"
    "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/installspace/robosapiens_tool_utilsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robosapiens_tool_utils" TYPE FILE FILES "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool_utils/package.xml")
endif()

