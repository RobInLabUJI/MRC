docker run --rm -it --net=rosnet --name teleop \
  --env ROS_HOSTNAME=teleop \
  --env ROS_MASTER_URI=http://turtlebot2:11311 \
  robinlab/cmr_tb2_teleop
