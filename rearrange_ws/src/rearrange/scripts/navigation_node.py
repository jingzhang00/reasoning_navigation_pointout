#!/usr/bin/env python

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import PoseStamped
from rearrange.msg import NavigateDrinkAction, NavigateDrinkFeedback, NavigateDrinkResult
import json
import tf
import math
import subprocess

file_path = '/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/queries/object_pose.json'
cur_coke_command =  "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.35 0.4 0.3 -1.7 1.5 -1.2 1.2 0"
cur_beer_command =  "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.25 0.4 -0.2 -1.7 1.5 -1.2 1.2 0"
dst_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.27 0.4 -0.3 -1.7 1.5 -1.5 1.14 0"
def load_json(file_path):
    try:
        with open(file_path, 'r') as json_file:
            return json.load(json_file)
    except IOError:
        rospy.logerr(f"Failed to load JSON file: {file_path}")
        return None

def get_pose(data, object_name):
    for item in data:
        if item.get("Object Name") == object_name:
            object_pose = item.get("Object Pose", {})
            expected_location_name = item.get("Expected Location", None)
            expected_location_pose = next((obj.get("Object Pose", {}) for obj in data if obj.get("Object Name") == expected_location_name), None)
            return object_pose, expected_location_pose
    return None, None

#! step1: move to expand the arm 
def adjust_pose(pose):
    x, y, z, w = pose['position']['x'], pose['position']['y'], pose['orientation']['z'], pose['orientation']['w']
    if y > 0:
        x -= 1
    else:
        x += 1.1
        original_quaternion = [0, 0, z, w]
        rotation_quaternion = [0, 0, 1, 0]
        new_quaternion = tf.transformations.quaternion_multiply(original_quaternion, rotation_quaternion)
        z, w = new_quaternion[2], new_quaternion[3]
    return x, y, z, w
#! step2: move to take the drink
def adjust_pose_step2(pose):
    x, y, z, w = pose['position']['x'], pose['position']['y'], pose['orientation']['z'], pose['orientation']['w']
    if y > 0:
        x -= 0.5
    else:
        x += 0.6
    return x, y, z, w


def send_goal(client, pose):
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x, goal.target_pose.pose.position.y = pose[0], pose[1]
    goal.target_pose.pose.orientation.z, goal.target_pose.pose.orientation.w = pose[2], pose[3]
    client.send_goal(goal)
    client.wait_for_result()

def handle_navigate_drink(goal, client, data):
    rospy.loginfo("Navigating to the drink location.")
    drink_pose, expected_location = get_pose(data, goal.drink_name)
    if drink_pose:
        send_goal(client, adjust_pose(drink_pose))
        rospy.loginfo("Reached the drink location.")
        #! here, move the robot to take the drink
        if goal.drink_name == 'coke':
            subprocess.run(cur_coke_command, shell=True)
        elif goal.drink_name == 'beer':
            subprocess.run(cur_beer_command, shell=True)
        send_goal(client, adjust_pose_step2(drink_pose))
        rospy.loginfo("Took the drink.")
    if expected_location:
        rospy.loginfo("Navigating to the expected location.")
        send_goal(client, adjust_pose(expected_location))
        #! PUT THE DRINK DOWN
        subprocess.run(dst_command, shell=True)
        rospy.loginfo("Reached the expected location.")

if __name__ == '__main__':
    rospy.init_node('navigate_drink_server')
    move_base_client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    move_base_client.wait_for_server()

    object_data = load_json(file_path)
    server = actionlib.SimpleActionServer('navigate_drink', NavigateDrinkAction, lambda goal: handle_navigate_drink(goal, move_base_client, object_data), False)
    server.start()
    rospy.spin()