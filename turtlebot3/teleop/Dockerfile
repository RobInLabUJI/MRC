FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
      ros-noetic-turtlebot3-teleop \
  && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "turtlebot3_teleop", "turtlebot3_teleop_key.launch"]

