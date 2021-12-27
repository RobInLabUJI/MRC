#!/usr/bin/env bash

rocker --nvidia --x11 --env USER=ecervera \
  --env ROS_IP=169.254.65.116 \
  --env ROS_MASTER_URI=http://169.254.208.115:11311 \
  --volume /tmp/.X11-unix:/tmp/.X11-unix --volume /dev:/dev:ro \
  --volume /lib/modules:/lib/modules:ro --volume /tmp:/tmp:rw \
  --volume $PWD/.ros:/root/.ros:rw \
  --network host robinlab/cmr_rtabmap \
  roslaunch rtabmap_ros rtabmap.launch \
    subscribe_rgbd:=true \
    rgbd_topic:=/camera/rgbd_image \
    compressed:=true \
    rtabmap_args:="--delete_db_on_start"
