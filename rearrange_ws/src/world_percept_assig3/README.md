```bash
pip install pyswip
```

In terminal 1:
```bash
source /knowrob_ws/devel/setup.bash
catkin_make
source devel/setup.bash
export GAZEBO_RESOURCE_PATH=$GAZEBO_RESOURCE_PATH:/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/
# roslaunch world_percept_assig3 gazebo_ssy236.launch
  source /tiago_public_ws/devel/setup.bash 
  roslaunch tiago_2dnav_gazebo tiago_navigation.launch public_sim:=true lost:=true
```

In terminal 2:
```bash
source /tiago_public_ws/devel/setup.bash 
rosservice call /global_localization "{}"
rosservice call /move_base/clear_costmaps "{}"
source devel/setup.bash
roslaunch world_percept_assig3 reasoning.launch
```

In terminal 3:
```bash
/bin/python /home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/scripts/interface.py
```