#!/usr/bin/env python
import rospy
import os
from world_percept_assig3.srv import SendGoal, SendGoalRequest

def read_text_file(file_name):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    file_path = os.path.join(dir_path, file_name)

    try:
        with open(file_path, 'r') as file:
            return file.read().strip()
    except IOError:
        rospy.logerr("Failed to read file: " + file_path)
        return None

def send_goal(target_name, target_x, target_y, target_orientation_z, target_orientation_w):
    rospy.wait_for_service('/send_goal')
    try:
        send_goal_service = rospy.ServiceProxy('/send_goal', SendGoal)
        req = SendGoalRequest()
        req.target_name = target_name
        req.target_x = target_x
        req.target_y = target_y
        req.target_orientation_z = target_orientation_z
        req.target_orientation_w = target_orientation_w
        response = send_goal_service(req)
        return response.success
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def main():
    rospy.init_node('text_file_reader', anonymous=True)

    while not rospy.is_shutdown():
        text = read_text_file('command.txt')

        if text:
            rospy.loginfo("Read from file: " + text)

            if text.lower() == "i want to drink":
                success = send_goal("cola", 1.3, 1.0, 0.0, 1.0)
                if success:
                    rospy.loginfo("Goal sent and executed successfully.")
                else:
                    rospy.loginfo("Failed to execute goal.")
                break  

            with open('command.txt', 'w') as file:
                file.write('')

        rospy.sleep(1) 

if __name__ == '__main__':
    main()

