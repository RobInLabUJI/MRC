#!/usr/bin/env bash

rocker --nvidia --x11 --env USER=ecervera \
  --volume /tmp/.X11-unix:/tmp/.X11-unix --volume /dev:/dev:ro \
  --volume /lib/modules:/lib/modules:ro --volume /tmp:/tmp:rw \
  --network host robinlab/cmr_realsense_mapping \
  roslaunch rtabmap_ros rtabmap.launch \
    rtabmap_args:="--delete_db_on_start" \
    depth_topic:=/camera/aligned_depth_to_color/image_raw \
    rgb_topic:=/camera/color/image_raw \
    camera_info_topic:=/camera/color/camera_info \
    approx_sync:=false
