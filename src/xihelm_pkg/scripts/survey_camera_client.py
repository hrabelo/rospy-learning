#!/usr/bin/env python3

import rospy
from xihelm_pkg.srv import SurveyCamera, SurveyCameraResponse
import cv2
from cv_bridge import CvBridge

def configure_request(angle):
    rospy.wait_for_service("survey_camera")
    try:
        service_proxy = rospy.ServiceProxy("survey_camera", SurveyCamera)
        resp_obj = service_proxy(angle)

        image_msg = resp_obj.image
        image = CvBridge().imgmsg_to_cv2(image_msg, desired_encoding="passthrough")

        cv2.imshow("Survey Camera", image)
        cv2.waitKey(0)
        cv2.destroyAllWindows()

    except rospy.ServiceException as e:
        print("Service request failed: \n")
        print(e)

if __name__ == '__main__':
    try:
        rospy.init_node("survey_camera_client_node")
        user_input = input("\nEnter a angle in degrees to take a picture: ")

        while user_input != "q" and not rospy.is_shutdown():
            try:
                configure_request(float(user_input))
                user_input = input("\nEnter a angle in degrees to take a picture: ")
            except Exception as e:
                print("Error trying to process the request")

    except rospy.ROSInterruptException:
        pass
