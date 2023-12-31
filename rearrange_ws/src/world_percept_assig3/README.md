`pip install pyswip`

`export GAZEBO_RESOURCE_PATH=$GAZEBO_RESOURCE_PATH:/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/`

`source /home/user/exchange/ssy236_project/rearrange_ws/devel/setup.bash`

`roslaunch world_percept_assig3 gazebo_ssy236.launch`

## Task 1:

source the ws and catkin_make: 
```bash
source /knowrob_ws/devel/setup.bash
catkin_make
source devel/setup.bash
```

In terminal 1:
```bash
source devel/setup.bash
roslaunch world_percept_assig3 reasoning.launch
```

In terminal 2:
```bash
/bin/python /home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/scripts/interface.py
```