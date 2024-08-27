execute_process(COMMAND "/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/thodoris/new_git_repo/active-camera-selection/catkin_ws/build/robosapiens_tool_utils/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
