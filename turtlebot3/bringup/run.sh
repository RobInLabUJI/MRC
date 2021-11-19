docker run --rm -it --net=rosnet --name turtlebot3 \
  --env ROS_HOSTNAME=turtlebot3 \
  --env ROS_MASTER_URI=http://turtlebot3:11311 \
  --device=/dev/ttyUSB0:/dev/ttyUSB0 \
  --device=/dev/ttyACM0:/dev/ttyACM0 \
  robinlab/cmr_tb3_bringup
