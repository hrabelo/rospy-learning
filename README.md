# Xihelm ROS example

This is an example of rospy application.

  
##  Features
  ### 1. RPM / speed calculation (Publisher + Subscriber);
   How to run:
```sh
$ rosrun xihelm_pkg rpm_pub.py
$ rosrun xihelm_pkg speed_calc_sub_node.py
$ rostopic echo /speed
```

  ### 2. Survey camera control (Server + Client);
 ```sh
$ rosrun xihelm_pkg survey_camera_service.py
$ rosrun xihelm_pkg survey_camera_client.py
$ {input a number}
```
  ### 3. Car position-distance control (Server + Client).
 ```sh
$ rosrun xihelm_pkg action_server.py
$ rosrun xihelm_pkg action_client.py
$ {enter the goal x,y,z coordinates}
$ rosrun xihelm_pkg robot_point_sub.py
$ {enter the current x,y,z coordinates}
```
## Development
I must confess that, in order to honor the time commitment, I didn't have enought time to cover it with tests and make it resilient to edge cases. However, if given time, strategies such unit testing and simulations using [Gazebo](http://gazebosim.org/), [RQT](http://wiki.ros.org/rqt), [RViz](http://wiki.ros.org/rviz) would help to achieve some "assurance" regarding reliability. QUALITY ASSURANCE SHOULD NEVER BE LEFT OUT OF ANY PROJECT.

## Special Thanks
Even not knowing if I'm moving forward in this process (If that happens to be the case and, if possible, please provide me tips on what I need to do better.) I just wanted to thank you for giving this opportunity! It felt amazing developing something way different from my "routine skills" (WebApi, .netcore, Docker, AzureDevops, etc.). It feels like there are endless possibilities for learning differente concepts of technology.
Hope to hear from you soon!