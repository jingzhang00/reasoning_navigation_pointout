```bash
pip install pyswip
```

```bash
cd src/rearrange/worlds
cp /home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/worlds/small_office.world /tiago_public_ws/src/pal_gazebo_worlds/worlds
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
roslaunch rearrange reasoning.launch
```


In terminal 3:
```bash
source devel/setup.bash
rosrun rearrange interface.py
```

Additional, if you want to check the target beverage
```bash
rostopic echo /navigate_drink/goal
```