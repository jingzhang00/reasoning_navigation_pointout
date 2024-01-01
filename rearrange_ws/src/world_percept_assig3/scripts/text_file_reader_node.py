#!/usr/bin/env python
import rospy
import os
import json
from world_percept_assig3.srv import ProcessObject, ProcessObjectRequest, SendGoal, SendGoalRequest
#!   here to navigate to the object location, we may need tiago built in navigation 
def read_text_file(file_name):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    file_path = os.path.join(dir_path, file_name)

    try:
        with open(file_path, 'r') as file:
            return file.read().strip()
    except IOError:
        rospy.logerr("Failed to read file: " + file_path)
        return None

def load_object_poses_from_json(file_path):
    try:
        with open(file_path, 'r') as json_file:
            data = json.load(json_file)
            return data
    except IOError:
        rospy.logerr("Failed to load JSON file: " + file_path)
        return None

def find_object_pose(object_name, object_data):
    for item in object_data:
        if "Object Name" in item and item["Object Name"] == object_name:
            return item.get("Object Pose")
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
    object_data = load_object_poses_from_json('/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/queries/object_pose.json')

    while not rospy.is_shutdown():
        text = read_text_file('find_things.txt')

        if text:
            rospy.loginfo("Read from file: " + text)

            object_pose = find_object_pose(text, object_data)
            if object_pose:
                rospy.loginfo("Object pose for {}:".format(text))
                rospy.loginfo("Position: x={}, y={}, z={}".format(object_pose["position"]["x"], object_pose["position"]["y"], object_pose["position"]["z"]))
                rospy.loginfo("Orientation: x={}, y={}, z={}, w={}".format(object_pose["orientation"]["x"], object_pose["orientation"]["y"], object_pose["orientation"]["z"], object_pose["orientation"]["w"]))
                
                # move to object location
                success = send_goal(text, object_pose["position"]["x"], object_pose["position"]["y"], object_pose["position"]["z"], object_pose["orientation"]["w"])
                if success:
                    rospy.loginfo("Moved to object location successfully.")
                else:
                    rospy.loginfo("Failed to move to object location.")
                
                
                for item in object_data:
                    if "Object Name" in item and item["Object Name"] == text:
                        expected_location = item.get("Expected Location")
                        
                        if expected_location:
                            expected_pose = find_object_pose(expected_location, object_data)
                            #!   if object_pose==expected_pose, then break, no need to move
                            if object_pose==expected_pose:
                                rospy.loginfo("No need to move, object is already in expected location.")
                                break
                            elif expected_pose:
                                rospy.loginfo("Expected Location ({}) pose:".format(expected_location))
                                rospy.loginfo("Position: x={}, y={}, z={}".format(expected_pose["position"]["x"], expected_pose["position"]["y"], expected_pose["position"]["z"]))
                                rospy.loginfo("Orientation: x={}, y={}, z={}, w={}".format(expected_pose["orientation"]["x"], expected_pose["orientation"]["y"], expected_pose["orientation"]["z"], expected_pose["orientation"]["w"]))
                                
                                # move to expected location
                                success = send_goal(expected_location, expected_pose["position"]["x"], expected_pose["position"]["y"], expected_pose["position"]["z"], expected_pose["orientation"]["w"])
                                if success:
                                    rospy.loginfo("Moved to expected location successfully.")
                                else:
                                    rospy.loginfo("Failed to move to expected location.")
                
                with open('command.txt', 'w') as file:
                    file.write('')

        rospy.sleep(20)

if __name__ == '__main__':
    main()
