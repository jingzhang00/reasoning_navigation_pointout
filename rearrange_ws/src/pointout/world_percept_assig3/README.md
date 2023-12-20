# Project

**Group 3**
**Qun Zhang, Peilin Lyu, Luming Wang, Jing Zhang**


## Here we are trying to do the built-in navigation and point out in ros
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0 2.7 0.2 -2.1 2.0 1.0 -0.8 0   
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0 2.7 0 0 0 0 0 0   
// rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.58 1.7 1.3  0 1 0 0 0   
### Firstly, use the tiago navigation to move to the target
In terminal 1:  
```
  roslaunch tiago_2dnav_gazebo tiago_navigation.launch public_sim:=true lost:=true
```
  

In terminal 2:  
Follow the tiago tutorial:
```
  rosservice call /global_localization "{}"
  rosservice call /move_base/clear_costmaps "{}"
```
Then, run the goal_topic_test.py node:
```
  rosrun world_percept_assig3 goal_topic_test.py 
```

In the terminal 3: 
Here, the node read the command in the txt and publish to the goal_topic_test node:
```
  rosrun world_percept_assig3 read_text_file.py 
``` 

### Run YOLO to save commad:
```
  run test_cola.py in windows to detect the bottle and save the command in the command.txt
  It is better to run the yolo in the windows
```
  



