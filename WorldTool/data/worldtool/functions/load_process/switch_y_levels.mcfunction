# Switch the y levels of position 1 and 2 (doesn't move the positions you've set)
scoreboard players operation $pos1y worldtool = $pos2y worldtool
scoreboard players operation $pos2y worldtool = $drawingposY worldtool
scoreboard players operation $drawingposY worldtool = $pos1y worldtool
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 store result entity @s Pos[1] double 1 run scoreboard players get $pos1y worldtool