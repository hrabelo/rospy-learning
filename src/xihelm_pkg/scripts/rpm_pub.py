#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

rpm_num = 10

def publish_rpm():
    rospy.init_node("rpm_pub_node")
    pub = rospy.Publisher("rpm", Float32, queue_size=10)

    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        pub.publish(rpm_num)
        rate.sleep()

if __name__ == '__main__':
    try:
        publish_rpm()
    except rospy.ROSInterruptException:
        pass
