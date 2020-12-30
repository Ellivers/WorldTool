scoreboard players operation @s wt_rotX = $rotX worldtool
scoreboard players operation @s wt_rotY = $rotY worldtool
scoreboard players operation @s wt_rotZ = $rotZ worldtool

execute if entity @s[tag=moveclone] unless entity @s[tag=!filtered,tag=!filtered_reversed] at @s run clone 2 1 13 2 1 13 0 1 13
execute if entity @s[tag=!rotated] run function worldtool:clone
execute if entity @s[tag=rotated] run function worldtool:processes/clone/rotated