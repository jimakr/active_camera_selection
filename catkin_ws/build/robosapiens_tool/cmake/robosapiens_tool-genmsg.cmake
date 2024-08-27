# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robosapiens_tool: 10 messages, 0 services")

set(MSG_I_FLAGS "-Irobosapiens_tool:/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robosapiens_tool_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" "robosapiens_tool/Pose2DKeypoint:std_msgs/Header"
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" "robosapiens_tool/Camera_Box_Detection_Confidence"
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" ""
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_custom_target(_robosapiens_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosapiens_tool" "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_cpp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
)

### Generating Services

### Generating Module File
_generate_module_cpp(robosapiens_tool
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robosapiens_tool_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robosapiens_tool_generate_messages robosapiens_tool_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_cpp _robosapiens_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosapiens_tool_gencpp)
add_dependencies(robosapiens_tool_gencpp robosapiens_tool_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosapiens_tool_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_eus(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
)

### Generating Services

### Generating Module File
_generate_module_eus(robosapiens_tool
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robosapiens_tool_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robosapiens_tool_generate_messages robosapiens_tool_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_eus _robosapiens_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosapiens_tool_geneus)
add_dependencies(robosapiens_tool_geneus robosapiens_tool_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosapiens_tool_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_lisp(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
)

### Generating Services

### Generating Module File
_generate_module_lisp(robosapiens_tool
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robosapiens_tool_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robosapiens_tool_generate_messages robosapiens_tool_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_lisp _robosapiens_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosapiens_tool_genlisp)
add_dependencies(robosapiens_tool_genlisp robosapiens_tool_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosapiens_tool_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_nodejs(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robosapiens_tool
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robosapiens_tool_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robosapiens_tool_generate_messages robosapiens_tool_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_nodejs _robosapiens_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosapiens_tool_gennodejs)
add_dependencies(robosapiens_tool_gennodejs robosapiens_tool_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosapiens_tool_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg"
  "${MSG_I_FLAGS}"
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)
_generate_msg_py(robosapiens_tool
  "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
)

### Generating Services

### Generating Module File
_generate_module_py(robosapiens_tool
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robosapiens_tool_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robosapiens_tool_generate_messages robosapiens_tool_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/PoseConfKpt2D.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose2DKeypoint.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/All_Camera_Detection_Info.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/bbox.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Box.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Camera_Box_Detection_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Cameras_id_Confidence.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/id_conf.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/img_bbox_heatmap.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool/msg/Pose_Detection.msg" NAME_WE)
add_dependencies(robosapiens_tool_generate_messages_py _robosapiens_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosapiens_tool_genpy)
add_dependencies(robosapiens_tool_genpy robosapiens_tool_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosapiens_tool_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosapiens_tool
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robosapiens_tool_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robosapiens_tool_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosapiens_tool
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robosapiens_tool_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robosapiens_tool_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosapiens_tool
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robosapiens_tool_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robosapiens_tool_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosapiens_tool
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robosapiens_tool_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robosapiens_tool_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosapiens_tool
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robosapiens_tool_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robosapiens_tool_generate_messages_py sensor_msgs_generate_messages_py)
endif()
