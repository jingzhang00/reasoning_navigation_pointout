#!/usr/bin/env python

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import PoseStamped
from rearrange.msg import NavigateDrinkAction, NavigateDrinkFeedback, NavigateDrinkResult
import json


file_path = '/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/queries/object_pose.json'

def load_object_poses(file_path):
    try:
        with open(file_path, 'r') as json_file:
            data = json.load(json_file)
            return data
    except IOError:
        rospy.logerr("Failed to load JSON file: " + file_path)
        return None
    

def find_pose(object_name, object_data):
    for item in object_data:
        if "Object Name" in item and item["Object Name"] == object_name:
            return item.get("Object Pose")
    return None


def expected_location(drink_name, object_data):
    for item in object_data:
        if "Object Name" in item and item["Object Name"] == drink_name:
            return item.get("Expected Location")
    return None


def handle_navigate_drink(goal):
    rospy.loginfo("Received a new goal to navigate to the drink.")
    move_base_client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    move_base_client.wait_for_server()
    rospy.loginfo("Connected to move_base action server.")

    drink_goal = MoveBaseGoal()
    drink_goal.target_pose.header.frame_id = "map"
    drink_goal.target_pose.header.stamp = rospy.Time.now()
    drink_goal.target_pose.pose.position.x = goal.target_x
    drink_goal.target_pose.pose.position.y = goal.target_y
    drink_goal.target_pose.pose.orientation.z = goal.target_orientation_z
    drink_goal.target_pose.pose.orientation.w = goal.target_orientation_w
    rospy.loginfo(f"Sending goal to move_base: {drink_goal}")

    move_base_client.send_goal(drink_goal)
    move_base_client.wait_for_result()
    rospy.loginfo("Reached the drink location.")

    object_data = load_object_poses(file_path)
    expected_location_name = expected_location(goal.drink_name, object_data)
    expected_location_pose = find_pose(expected_location_name, object_data)
    rospy.loginfo(f"Expected location: {expected_location_name}, Pose: {expected_location_pose}")

    expected_location_goal = MoveBaseGoal()
    expected_location_goal.target_pose.header.frame_id = "map"
    expected_location_goal.target_pose.header.stamp = rospy.Time.now()
    expected_location_goal.target_pose.pose.position.x = expected_location_pose["position"]["x"]
    expected_location_goal.target_pose.pose.position.y = expected_location_pose["position"]["y"]
    expected_location_goal.target_pose.pose.orientation.z = expected_location_pose["orientation"]["z"]
    expected_location_goal.target_pose.pose.orientation.w = expected_location_pose["orientation"]["w"]
    rospy.loginfo(f"Sending goal to move_base for expected location: {expected_location_goal}")

    move_base_client.send_goal(expected_location_goal)
    move_base_client.wait_for_result()
    rospy.loginfo("Reached the expected location.")

    navigate_drink_feedback = NavigateDrinkFeedback()
    navigate_drink_feedback.success = True
    server.set_succeeded(navigate_drink_feedback)
    rospy.loginfo("Navigation action succeeded.")


if __name__ == '__main__':
    rospy.init_node('navigate_drink_server')
    server = actionlib.SimpleActionServer('navigate_drink', NavigateDrinkAction, handle_navigate_drink, False)
    server.start()
    rospy.spin()
