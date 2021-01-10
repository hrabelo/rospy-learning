#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32
from math import pi

wheel_radius = rospy.get_param("wheel_radius")

def create_subscriber(pub):
    rospy.Subscriber("rpm", Float32, calculate_speed, (pub))

def calculate_speed(rpm, publisher):
    # by doing that, I wouldn't have to restart the node in case
    # I need to change it
    wheel_radius = rospy.get_param("wheel_radius")
    speed = 2 * pi * wheel_radius  * rpm.data / 60
    publisher.publish(speed)

def speed_pub():
    pub = rospy.Publisher("speed", Float32, queue_size=10)
    return pub

if __name__ == '__main__':
    rospy.init_node("speed_calc_sub_node")
    pub = speed_pub()
    create_subscriber(pub)
    rospy.spin()
