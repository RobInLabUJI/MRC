docker run --rm -it --net=rosnet --name slam \
  --env ROS_HOSTNAME=slam \
  --env ROS_MASTER_URI=http://turtlebot3:11311 \
  --env TURTLEBOT3_MODEL=waffle_pi \
  robinlab/cmr_tb3_slam
