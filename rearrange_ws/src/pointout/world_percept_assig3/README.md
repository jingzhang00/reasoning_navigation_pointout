# Project

**Group 3**
**Qun Zhang, Peilin Lyu, Luming Wang, Jing Zhang**


## Here we are trying to do the built-in navigation and point out in ros
This is command to move the arm:  
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0 2.7 0.2 -2.1 2.0 1.0 -0.8 0  
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0 2.7 0 0 0 0 0 0  
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.58 1.7 1.3  0 1 0 0 0  

### Firstly, use the tiago navigation to move to the target

#### In terminal 1:  


    roslaunch tiago_2dnav_gazebo tiago_navigation.launch public_sim:=true lost:=true  

#### In terminal 2:

    rosservice call /global_localization "{}"  

    rosservice call /move_base/clear_costmaps "{}"  

then, run the goal_topic_test.py node:  

    rosrun world_percept_assig3 goal_topic_test.py 

#### In the terminal 3:  

      rosservice call /send_goal "target_name: 'cola'
    target_x: 1.3
    target_y: 1.0
    target_orientation_z: 0.0
    target_orientation_w: 1.0"

      rosservice call /send_goal "target_name: 'Beer'
    target_x: -1.0
    target_y: -6.0
    target_orientation_z:  -0.7071
    target_orientation_w:  0.7071"


