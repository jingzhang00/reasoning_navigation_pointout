#!/usr/bin/env python
import subprocess
import rospy
from move_base_msgs.msg import MoveBaseActionGoal
from world_percept_assig3.srv import SendGoal, SendGoalResponse

# !!!!!  useless for now, waiting for small office map location to move
# !!!!!  Need to change logic to move to the location of the object
#        if the object is on the correct location, move once to the location of the object
#        if the object is not on the correct location, move to the current location of the object and then move to the correct location
# need to run after   roslaunch tiago_2dnav_gazebo tiago_navigation.launch public_sim:=true lost:=true
# !!!!!



# Global publisher for sending goals
goal_publisher = None

def handle_send_goal(req):
    """
    Handles the send goal service request.
    Moves the robot to the specified position, executes arm movements, and then returns to the start.
    """
    if req.target_name == "coke_can":
        try:
            
            # Execute command to expand the arm for the operation
            expand_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk 0.58 1.7 1.3 0 1 0 0 0"
            if not execute_command(expand_command):
                return SendGoalResponse(False)
            
            # Move to the specified position
            if not move_to_position(req):
                return SendGoalResponse(False)
            #give a little time to reach the position
            rospy.sleep(30)

            # Execute command to lower the arm for picking up the object
            lower_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk 0.58 1.7 1.3 0 1 0 0 0"
            if not execute_command(lower_command):
                return SendGoalResponse(False)
            #give a little time to lower the arm
            rospy.sleep(2)

            # Move back to the start position (0, 0)
            if not move_to_start_position():
                return SendGoalResponse(False)
            #give a little time to reach the position
            rospy.sleep(10)

            # Return to initial arm position
            reset_command = "rosrun tiago_moveit_tutorial plan_arm_torso_ik 0.4 0.3 0.46 -0.011 1.57 0.037"  # Replace with the actual reset command
            if not execute_command(reset_command):
                return SendGoalResponse(False)
            rospy.sleep(2)
            rospy.loginfo("Goal reached successfully.")
            
            return SendGoalResponse(True)
        except Exception as e:
            rospy.loginfo("Error: " + str(e))
            return SendGoalResponse(False)
    elif req.target_name == "Beer":
        try:
            
            # Execute command to expand the arm for the operation
            expand_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk 0.58 1.7 1.3 0 1 0 0 0"
            if not execute_command(expand_command):
                return SendGoalResponse(False)
            
            # Move to the specified position
            if not move_to_position(req):
                return SendGoalResponse(False)
            #give a little time to reach the position
            rospy.sleep(30)

            # Execute command to lower the arm for picking up the object
            lower_command = "rosrun tiago_moveit_tutorial plan_arm_torso_fk 0.58 1.7 1.3 0 1 0 0 0"
            if not execute_command(lower_command):
                return SendGoalResponse(False)
            #give a little time to lower the arm
            rospy.sleep(2)

            # Move back to the start position (0, 0)
            if not move_to_start_position():
                return SendGoalResponse(False)
            #give a little time to reach the position
            rospy.sleep(10)

            # Return to initial arm position
            reset_command = "rosrun tiago_moveit_tutorial plan_arm_torso_ik 0.4 0.3 0.46 -0.011 1.57 0.037"  # Replace with the actual reset command
            if not execute_command(reset_command):
                return SendGoalResponse(False)
            rospy.sleep(2)
            rospy.loginfo("Goal reached successfully.")
            
            return SendGoalResponse(True)
        except Exception as e:
            rospy.loginfo("Error: " + str(e))
            return SendGoalResponse(False)
    else:
        rospy.loginfo(f"No such target: {req.target_name}")
        return SendGoalResponse(False)

def execute_command(command):
    """
    Executes a shell command and waits for it to finish.
    Returns True if the command was successful, False otherwise.
    """
    process = subprocess.Popen(command, shell=True)
    process.wait()
    if process.returncode != 0:
        rospy.loginfo("Failed to execute command.")
        return False
    return True

def move_to_position(req):
    """
    Publishes a goal to move the robot to a specified position.
    """
    goal = MoveBaseActionGoal()
    goal.goal.target_pose.header.frame_id = "map"
    goal.goal.target_pose.header.stamp = rospy.Time.now()
    goal.goal.target_pose.pose.position.x = req.target_x
    goal.goal.target_pose.pose.position.y = req.target_y
    goal.goal.target_pose.pose.orientation.z = req.target_orientation_z
    goal.goal.target_pose.pose.orientation.w = req.target_orientation_w

    goal_publisher.publish(goal)
    rospy.loginfo(f"Moving to position: {req.target_x}, {req.target_y}")

    # Additional logic to check if the robot has reached the position can be added here

    return True

def move_to_start_position():
    """
    Publishes a goal to move the robot back to the start position (0, 0).
    """
    goal = MoveBaseActionGoal()
    goal.goal.target_pose.header.frame_id = "map"
    goal.goal.target_pose.header.stamp = rospy.Time.now()
    goal.goal.target_pose.pose.position.x = 0
    goal.goal.target_pose.pose.position.y = 0
    goal.goal.target_pose.pose.orientation.z = 0
    goal.goal.target_pose.pose.orientation.w = 1

    goal_publisher.publish(goal)
    rospy.loginfo("Moving back to start position.")

    # Additional logic to check if the robot has reached the start position can be added here

    return True

def send_goal_server():
    """
    Initializes the ROS node, creates a service server for sending goals.
    """
    global goal_publisher
    rospy.init_node('send_goal_server')

    goal_publisher = rospy.Publisher('/move_base/goal', MoveBaseActionGoal, queue_size=1)
    s = rospy.Service('send_goal', SendGoal, handle_send_goal)
    rospy.spin()

if __name__ == '__main__':
    send_goal_server()
