#!/usr/bin/env python3
import rospy

from geometry_msgs.msg import Point

def robot_point_sub(usr_coords):
    pub = rospy.Publisher("robot/point", Point, queue_size=10)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        pub.publish(Point(x = usr_coords[0],
                          y = usr_coords[1],
                          z = usr_coords[2]))
        rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node("robot_point_pub_node")
        usr_x = input("Enter the current x coordinate: ")
        usr_y = input("Enter the current y coordinate: ")
        usr_z = input("Enter the current z coordinate: ")

        usr_coords = [float(usr_x), float(usr_y), float(usr_z)]

        robot_point_sub(usr_coords)

    except rospy.ROSInterruptException:
        print("error")
