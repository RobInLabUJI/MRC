FROM ros:noetic-ros-base

RUN apt-get update && apt-get install -y \
    ros-noetic-openni2-camera ros-noetic-openni2-launch \
    && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "openni2_launch", "openni2.launch"]
