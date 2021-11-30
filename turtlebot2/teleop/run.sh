docker run --rm -it --network host --name teleop \
  --env ROS_IP=192.168.0.201 \
  --env ROS_MASTER_URI=http://192.168.0.207:11311 \
  robinlab/cmr_tb2_teleop
