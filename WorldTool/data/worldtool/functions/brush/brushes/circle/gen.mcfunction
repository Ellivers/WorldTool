# Called by worldtool:brush/brushes/circle/tick
# Makes a circle with the specified size (diameter) and axis

kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=scheduled_circle]
tag @s remove scheduled_circle

#execute if predicate worldtool:brush/axis/auto run tag @s add axis.auto
execute if predicate worldtool:brush/axis/x run tag @s add axis.x
execute if predicate worldtool:brush/axis/y run tag @s add axis.y
execute if predicate worldtool:brush/axis/z run tag @s add axis.z

scoreboard players reset #X worldtool
scoreboard players reset #Y worldtool
scoreboard players reset #Z worldtool

execute if predicate worldtool:brush/axis/auto run function worldtool:brush/brushes/circle/get_axis
execute if entity @s[tag=axis.x] run scoreboard players set #X worldtool 1
execute if entity @s[tag=axis.y] run scoreboard players set #Y worldtool 1
execute if entity @s[tag=axis.z] run scoreboard players set #Z worldtool 1

execute if score @s wt_brush_size matches 1 run clone 0 1 13 0 1 13 ~ ~ ~
execute if score @s wt_brush_size matches 3 run function worldtool:brush/brushes/circle/gen/3
execute if score @s wt_brush_size matches 5 run function worldtool:brush/brushes/circle/gen/5
execute if score @s wt_brush_size matches 7 run function worldtool:brush/brushes/circle/gen/7
execute if score @s wt_brush_size matches 9 run function worldtool:brush/brushes/circle/gen/9
execute if score @s wt_brush_size matches 11 run function worldtool:brush/brushes/circle/gen/11
execute if score @s wt_brush_size matches 13 run function worldtool:brush/brushes/circle/gen/13
execute if score @s wt_brush_size matches 15 run function worldtool:brush/brushes/circle/gen/15
execute if score @s wt_brush_size matches 17 run function worldtool:brush/brushes/circle/gen/17
execute if score @s wt_brush_size matches 19 run function worldtool:brush/brushes/circle/gen/19
execute if score @s wt_brush_size matches 21 run function worldtool:brush/brushes/circle/gen/21
execute if score @s wt_brush_size matches 23 run function worldtool:brush/brushes/circle/gen/23
execute if score @s wt_brush_size matches 25 run function worldtool:brush/brushes/circle/gen/25

execute if score @s wt_brush_size matches 26.. run tellraw @s {"text": "The brush size is too big for this brush","color":"red"}

tag @s remove axis.auto
execute if entity @s[tag=!cmdpos1] run tag @s remove axis.x
execute if entity @s[tag=!cmdpos1] run tag @s remove axis.y
execute if entity @s[tag=!cmdpos1] run tag @s remove axis.z