FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-turtlebot3-bringup \
    && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "turtlebot3_bringup", "turtlebot3_robot.launch"]

