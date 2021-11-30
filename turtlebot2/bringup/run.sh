docker run --rm -it --network host --name turtlebot2 \
  --env ROS_IP=192.168.0.207 \
  --env ROS_MASTER_URI=http://192.168.0.207:11311 \
  --env TURTLEBOT_BATTERY=None \
  --device=/dev/kobuki:/dev/kobuki \
  robinlab/cmr_tb2_bringup roslaunch turtlebot_bringup minimal.launch
