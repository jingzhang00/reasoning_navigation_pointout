```bash
pip install pyswip
```

```bash
cd src/world_percept_assig3/launch
cp tiago_navigation.launch /tiago_public_ws/src/tiago_simulation/tiago_2dnav_gazebo/launch
```

```bash
cd src/world_percept_assig3/worlds
cp small_office.world /tiago_public_ws/src/pal_gazebo_worlds/worlds
```

In terminal 1:
```bash
source /knowrob_ws/devel/setup.bash
catkin_make
source devel/setup.bash
roslaunch tiago_2dnav_gazebo tiago_navigation.launch public_sim:=true
```

In terminal 2:
adjust amcl position, then
```bash
source devel/setup.bash
rosservice call /move_base/clear_costmaps "{}"
roslaunch world_percept_assig3 reasoning.launch
```


In terminal 3:
```bash
source devel/setup.bash
rosrun world_percept_assig3 interface.py
```

Additional, if you want to check the target beverage
```bash
rostopic echo /navigate_drink/goal
```