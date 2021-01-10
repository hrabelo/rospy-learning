# ROS example

This is an example of rospy application.

  
##  Features
  ### 1. RPM / speed calculation (Publisher + Subscriber);
   How to run:
```sh
$ rosrun rospy-learning_pkg rpm_pub.py
$ rosrun rospy-learning_pkg speed_calc_sub_node.py
$ rostopic echo /speed
```

  ### 2. Survey camera control (Server + Client);
 ```sh
$ rosrun rospy-learning_pkg survey_camera_service.py
$ rosrun rospy-learning_pkg survey_camera_client.py
$ {input a number}
```
  ### 3. Car position-distance control (Server + Client).
 ```sh
$ rosrun rospy-learning_pkg action_server.py
$ rosrun rospy-learning_pkg action_client.py
$ {enter the goal x,y,z coordinates}
$ rosrun rospy-learning_pkg robot_point_sub.py
$ {enter the current x,y,z coordinates}
```
