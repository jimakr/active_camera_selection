# Robosapiens Active Camera Selection
Best view selected from multicamera system


ROS version: noetic
Install ROS noetic instructions

http://wiki.ros.org/noetic/Installation/Ubuntu

follow 1.1, 1.2, 1.3, 1.4

1.4 --> ``sudo apt install ros-noetic-desktop``


To run the simulation and the tool follow the next steps:
* enter current directory ``cd active-camera-selection``
  
* run ``./venv_setup.sh ``

* activate venv

``cd venv``

``source ./bin/activate ``

* Build ROS packages

In ``$active-camera-selection`` directory 

``cd active-camera-selection``

`` cd /catkin_ws``

``catkin_make``

``source devel/setup.bash``

* Launch the project

``roslaunch robosapiens_tool active_camera_selection.launch``


<img src="demo_image.png" alt="Demo Image" width="640" height="320">

Here is a video showcasing our project.

[Demo Video](https://github.com/mthodoris/active-camera-selection/blob/master/demo_video.mp4)

OR 

https://drive.google.com/file/d/1YyOXba8wrdovWMPNo5imzmLLTzOlbqh3/view?usp=drive_link


A graphical representation of the ros-nodes is depicted in the following graph

<img src="/catkin_ws/src/robosapiens_tool/rosgraph.png" alt="ROS nodes graph" width="866" height="540">
 
