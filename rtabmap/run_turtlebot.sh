#!/usr/bin/env bash

rocker --nvidia --x11 --env USER=ecervera \
  --volume /tmp/.X11-unix:/tmp/.X11-unix --volume /dev:/dev:ro \
  --volume /lib/modules:/lib/modules:ro --volume /tmp:/tmp:rw \
  --network host robinlab/cmr_rtabmap \
  roslaunch rtabmap_ros demo_turtlebot_mapping.launch
