FROM ros:noetic-ros-base

RUN apt-get update && apt-get install -y \
    ros-noetic-rgbd-launch \
    ros-noetic-libuvc-camera ros-noetic-libuvc-ros \
    && rm -rf /var/lib/apt/lists/*

ENV ROS_WS /opt/ros_ws
RUN mkdir -p $ROS_WS/src
WORKDIR $ROS_WS

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*
    
RUN git -C src clone https://github.com/orbbec/ros_astra_camera

SHELL ["/bin/bash", "-c"]

RUN source /opt/ros/noetic/setup.bash && catkin_make -j1

ADD astra_entrypoint.sh /astra_entrypoint.sh
ENTRYPOINT ["/astra_entrypoint.sh"]
CMD ["roslaunch", "astra_camera", "astra.launch"]
