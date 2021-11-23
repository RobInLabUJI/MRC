FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-turtlebot3-slam \
      ros-${ROS_DISTRO}-gmapping \
      ros-${ROS_DISTRO}-map-server \
    && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "turtlebot3_slam", "turtlebot3_slam.launch", "open_rviz:=false"]
