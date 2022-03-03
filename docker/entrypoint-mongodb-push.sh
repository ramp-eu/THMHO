#!/bin/bash
source "/opt/ros/noetic/setup.bash" && source "$CATKIN_WS/devel/setup.bash"
export ROS_MASTER_URI=http://localhost:11311
export ROS_IP="$(hostname -I | cut -f1 -d' ')"

rosrun thmho_ngsi_converter_bringup costmap_saver.py # push to mongodb inhouse