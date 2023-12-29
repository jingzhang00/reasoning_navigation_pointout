# ssy236_project

**Group 3**
**Qun Zhang, Peilin Lyu, Luming Wang, Jing Zhang**

```
.  
+---rearrange_ws

    +---src
        +---navigation
        +---perception
        +---pointout
        +---reasoning
     
```
## 2023/12/14 QunZhang, Luming Wang
```
PLS read the readme inside ssy236_project\rearrange_ws\src\pointout\world_percept_assig3, but notice that you need to source tiago ws...  
It can naviagtion and point out, even through it is not very accurate. 
```

## 2023/12/19 QunZhang, Luming Wang
```
Update a new node that can read the command in txt and pub to goal_rtopic_test node to move tiago
```

## 2023/12/20 QunZhang, Luming Wang
```
Add YOLO as tiago's eye to detect bottle and save command in command.txt   
It is better to run YOLO in windows, because it is a bit difficult to use camera with docker
```

## 2023/12/21 Peilin:   
 ```
1. Added cola and beer into tst3.world. Please save it in ~\tiago_public_ws\src\pal_gazebo_worlds\worlds, then replace the argument of world with "tst3" in tiago_navigation.launch.
2. Add the prolog/Reasoning as tiago's brain: in progress.
 ```

 ## 2023/12/20 QunZhang, Luming Wang, Peilin:   
```
Add decision tree and yolo
```
    
    
