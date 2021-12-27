docker run --rm -it --privileged --network host \
  --env ROS_IP=169.254.208.115 \
  --env ROS_MASTER_URI=http://169.254.208.115:11311 \
  --volume $PWD/.ros:/root/.ros:rw \
  robinlab/cmr_realsense_bringup \
  roslaunch /realsense.launch
