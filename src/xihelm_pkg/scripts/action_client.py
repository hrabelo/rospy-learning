#! /usr/bin/env python3

import rospy
import actionlib

from xihelm_pkg.msg import Navigate2DAction, Navigate2DFeedback, Navigate2DResult, Navigate2DGoal
from geometry_msgs.msg import Point

def feedback_callback(feedback):
    print("Current distance to the goal point is " + str(feedback.distance_remaining))

def nav_client(usr_coords):
    client = actionlib.SimpleActionClient("navigate_2D_action", Navigate2DAction)

    client.wait_for_server()

    goal = Navigate2DGoal(Point(x = usr_coords[0], y = usr_coords[1], z = usr_coords[2]))

    client.send_goal(goal, feedback_cb = feedback_callback)

    client.wait_for_result()

    return client.get_result()

if __name__ == '__main__':
    try:
        rospy.init_node("navigate_2D_action_client_node")
        usr_x = input("Enter the desired x coordinate: ")
        usr_y = input("Enter the desired y coordinate: ")
        usr_z = input("Enter the desired z coordinate: ")

        usr_coords = [float(usr_x), float(usr_y), float(usr_z)]

        result = nav_client(usr_coords)
        print(result)

    except rospy.ROSInterruptException:
        print("Program finished")
