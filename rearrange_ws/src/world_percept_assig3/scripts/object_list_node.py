#!/usr/bin/env python

import rospy
import json
import rospkg
from pyswip import Prolog
from geometry_msgs.msg import Pose
import os
from world_percept_assig3.srv import GetSceneObjectList, GetSceneObjectListRequest

def pose_to_dict(pose):
    pose_dict = {
        'position': {
            'x': pose.position.x,
            'y': pose.position.y,
            'z': pose.position.z,
        },
        'orientation': {
            'x': pose.orientation.x,
            'y': pose.orientation.y,
            'z': pose.orientation.z,
            'w': pose.orientation.w,
        }
    }
    return pose_dict


def get_scene_objects():
    rospy.wait_for_service('/get_scene_object_list')
    get_objects = rospy.ServiceProxy('/get_scene_object_list', GetSceneObjectList)
    req = GetSceneObjectListRequest()
    req.object_name = "all"
    res = get_objects(req)
    return res


def expected_location(objects_list):
    loc = {}

    prolog = Prolog()
    prolog.consult('/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/prolog/instance_utils.pl')

    for obj_info in objects_list:
        object_name = obj_info['Object Name']

        if object_name in ["coke", "juice", "beer"]:
            parent_class_query = f"get_class('{object_name}', ParentClass)"
            parent_class_results = list(prolog.query(parent_class_query))
            if parent_class_results:
                parent_class = parent_class_results[0]["ParentClass"]

                loc_query = f"get_property('{parent_class}', 'isOn', Range)"
                expected_loc_results = list(prolog.query(loc_query))
                if expected_loc_results:
                    expected_loc = expected_loc_results[0]["Range"]
                    loc[object_name] = expected_loc
    return loc


def calculate_distance(pose1, pose2):
    return ((pose1['x'] - pose2['x'])**2 + (pose1['y'] - pose2['y'])**2 + (pose1['z'] - pose2['z'])**2)**0.5


def find_curr_loc(objects_list):
    curr_loc = {}
    
    prolog = Prolog()
    prolog.consult('/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/prolog/instance_utils.pl')

    beverages = []
    furnitures = []

    target = "Beverage"
    query = f"get_subclass('{target}', Class)"
    for sol in prolog.query(query):
        beverages.append(sol["Class"])
    
    furniture_query = f"get_subclass('Furniture', Class)"
    for sol in prolog.query(furniture_query):
        furnitures.append(sol["Class"])

    object_positions = {obj['Object Name']: obj['Object Pose']['position'] for obj in objects_list}

    for beverage in beverages:
        if beverage in object_positions:
            min_distance = float('inf')
            nearest_furniture = None
            for furniture in furnitures:
                if furniture in object_positions:
                    distance = calculate_distance(object_positions[beverage], object_positions[furniture])
                    if distance < min_distance:
                        min_distance = distance
                        nearest_furniture = furniture
            curr_loc[beverage] = nearest_furniture

    return curr_loc


if __name__ == '__main__':
    rospy.init_node('object_list_node')
    result = get_scene_objects()
    objects_list = []
    for name, pose in zip(result.objects.name, result.objects.pose):
        object_info = {
            'Object Name': name,
            'Object Pose': pose_to_dict(pose)
        }
        objects_list.append(object_info)

    expected_locations = expected_location(objects_list)
    for obj in objects_list:
        obj_name = obj['Object Name']
        if obj_name in expected_locations:
            obj['Expected Location'] = expected_locations[obj_name]

    current_locations = find_curr_loc(objects_list)
    for obj in objects_list:
        obj_name = obj['Object Name']
        if obj_name in current_locations:
            obj['Current Location'] = current_locations[obj_name]


    rospack = rospkg.RosPack()
    package_path = rospack.get_path('world_percept_assig3')
    file_path = os.path.join(package_path, 'queries', 'object_pose.json')
    rospy.loginfo("Saving data to: " + file_path)

    if not os.path.exists(os.path.dirname(file_path)):
        os.makedirs(os.path.dirname(file_path))

    with open(file_path, 'w') as file:
        json.dump(objects_list, file, indent=4)

    rospy.loginfo("File saved successfully.")
