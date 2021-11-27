FROM ros:noetic-ros-base

RUN apt-get update && apt-get install -y \
    ros-noetic-p2os-driver ros-noetic-p2os-launch \
    ros-noetic-p2os-msgs ros-noetic-p2os-teleop \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-noetic-teleop-twist-keyboard \
    && rm -rf /var/lib/apt/lists/*

ADD p2os_driver.launch /root

CMD ["roslaunch", "/root/p2os_driver.launch"]

