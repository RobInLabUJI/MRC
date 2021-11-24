docker run --rm -it --net=rosnet --name turtlebot2 \
  --env ROS_HOSTNAME=turtlebot2 \
  --env ROS_MASTER_URI=http://turtlebot2:11311 \
  --env TURTLEBOT_BATTERY=None \
  --device=/dev/kobuki:/dev/kobuki \
  robinlab/cmr_tb2_bringup roslaunch turtlebot_bringup minimal.launch
