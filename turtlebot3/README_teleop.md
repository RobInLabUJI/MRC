## TurtleBot3 teleoperation in networked containers across multiple hosts

Based on [the Docker docs](https://docs.docker.com/network/network-tutorial-overlay/#use-an-overlay-network-for-standalone-containers).

1. In external PC
```
docker swarm init
```
(keep the token step 2)

2. In TurtleBot3
```
docker swarm join --token <TOKEN> <IP-ADDRESS-OF-MANAGER>:2377
```

3. In external PC
```
docker network create -d overlay --attachable rosnet
```

4. In TurtleBot3
```
./turtlebot3/run.sh
```

5. In external PC
```
./turtlebot3/teleop/run.sh
```

