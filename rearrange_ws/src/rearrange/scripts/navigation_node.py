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

def location_offset(target_pose_x, target_pose_y, target_orientation_z, target_orientation_w):
    """
    Adjusts the location offset based on the target_pose_y value.
    If target_pose_y is positive, it adjusts target_pose_x by -0.5.
    If target_pose_y is negative, it adjusts target_pose_x by +1.2 and rotates the orientation by 180 degrees around the Z-axis.
    """
    if target_pose_y > 0:
        target_pose_x_new = target_pose_x - 1
        target_pose_y_new = target_pose_y
        target_orientation_z_new = target_orientation_z
        target_orientation_w_new = target_orientation_w
    else:
        target_pose_x_new = target_pose_x + 1.1
        target_pose_y_new = target_pose_y

        # Original orientation quaternion
        original_quaternion = [0, 0, target_orientation_z, target_orientation_w]
        
        # Quaternion for 180 degree rotation around the Z-axis
        rotation_quaternion = [0, 0, 1, 0]

        new_quaternion = tf.transformations.quaternion_multiply(original_quaternion, rotation_quaternion)
        target_orientation_z_new = new_quaternion[2]
        target_orientation_w_new = new_quaternion[3]

    return target_pose_x_new, target_pose_y_new, target_orientation_z_new, target_orientation_w_new


def handle_navigate_drink(goal):
    rospy.loginfo("Received a new goal to navigate to the drink.")
    move_base_client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    move_base_client.wait_for_server()
    rospy.loginfo("Connected to move_base action server.")

    drink_goal = MoveBaseGoal()
    drink_goal.target_pose.header.frame_id = "map"
    drink_goal.target_pose.header.stamp = rospy.Time.now()
    target_pose_x, target_pose_y,target_orientation_z,target_pose_w=location_offset(goal.target_x, goal.target_y, goal.target_orientation_z, goal.target_orientation_w)
    drink_goal.target_pose.pose.position.x = target_pose_x
    drink_goal.target_pose.pose.position.y = target_pose_y
    drink_goal.target_pose.pose.orientation.z = target_orientation_z
    drink_goal.target_pose.pose.orientation.w = target_pose_w
    rospy.loginfo(f"Sending goal to move_base: {drink_goal}")

    move_base_client.send_goal(drink_goal)
    move_base_client.wait_for_result()
    rospy.loginfo("Reached the drink location.")
    
    cur_coke_command =  "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.35 0.4 0.3 -1.7 1.5 -1.2 1.2 0"
    cur_beer_command =  "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.25 0.4 -0.2 -1.7 1.5 -1.2 1.2 0"
    dst_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.27 0.4 -0.3 -1.7 1.5 -1.5 1.14 0"
    
    # To lift the arm
    if goal.drink_name == "coke":
        subprocess.run(cur_coke_command, shell=True)
        #! here, move the robot to take the drink
        drink_goal.target_pose.pose.position.x = target_pose_x+0.5
        drink_goal.target_pose.pose.position.y = target_pose_y
        drink_goal.target_pose.pose.orientation.z = target_orientation_z
        drink_goal.target_pose.pose.orientation.w = target_pose_w
        rospy.loginfo(f"Taking : {drink_goal}")
        move_base_client.send_goal(drink_goal)
        move_base_client.wait_for_result()
        rospy.loginfo("Took the drink location.")
    elif goal.drink_name == "beer":
        subprocess.run(cur_beer_command, shell=True)
        drink_goal.target_pose.pose.position.x = target_pose_x-0.5
        drink_goal.target_pose.pose.position.y = target_pose_y
        drink_goal.target_pose.pose.orientation.z = target_orientation_z
        drink_goal.target_pose.pose.orientation.w = target_pose_w
        rospy.loginfo(f"Taking : {drink_goal}")
        move_base_client.send_goal(drink_goal)
        move_base_client.wait_for_result()    
    rospy.sleep(3)

    object_data = load_object_poses(file_path)
    expected_location_name = expected_location(goal.drink_name, object_data)
    expected_location_pose = find_pose(expected_location_name, object_data)
    rospy.loginfo(f"Expected location: {expected_location_name}, Pose: {expected_location_pose}")

    expected_location_goal = MoveBaseGoal()
    expected_location_goal.target_pose.header.frame_id = "map"
    expected_location_goal.target_pose.header.stamp = rospy.Time.now()
    expected_location_x, expected_location_y,expected_orientation_z,expected_location_w=location_offset(expected_location_pose["position"]["x"], expected_location_pose["position"]["y"],
                                                             expected_location_pose["orientation"]["z"], expected_location_pose["orientation"]["w"])
    rospy.loginfo("This is expected location x: " + str(expected_location_x) + " and y: " + str(expected_location_y) + " for drink: " + str(goal.drink_name))
    expected_location_goal.target_pose.pose.position.x = expected_location_x
    expected_location_goal.target_pose.pose.position.y = expected_location_y
    expected_location_goal.target_pose.pose.orientation.z = expected_orientation_z
    expected_location_goal.target_pose.pose.orientation.w = expected_location_w
    rospy.loginfo(f"Sending goal to move_base for expected location: {expected_location_goal}")

    move_base_client.send_goal(expected_location_goal)
    move_base_client.wait_for_result()
    rospy.loginfo("Reached the expected location.")
    
    subprocess.run(dst_command, shell=True) 
    rospy.sleep(3)

    navigate_drink_feedback = NavigateDrinkFeedback()
    navigate_drink_feedback.success = True
    server.set_succeeded(navigate_drink_feedback)
    rospy.loginfo("Navigation action succeeded.")


if __name__ == '__main__':
    rospy.init_node('navigate_drink_server')
    server = actionlib.SimpleActionServer('navigate_drink', NavigateDrinkAction, handle_navigate_drink, False)
    server.start()
    rospy.spin()
