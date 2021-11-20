FROM ros:noetic-ros-core

# install ros package
RUN apt-get update && apt-get install -y \
      ros-noetic-turtlebot3-teleop \
  && rm -rf /var/lib/apt/lists/*

# launch ros package
CMD ["roslaunch", "turtlebot3_teleop", "turtlebot3_teleop_key.launch"]

