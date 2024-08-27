execute_process(COMMAND "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
