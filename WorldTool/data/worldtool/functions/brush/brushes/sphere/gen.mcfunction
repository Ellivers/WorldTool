kill @e[type=minecraft:area_effect_cloud,tag=scheduled_sphere]
execute unless entity @s[tag=cmdpos1] run tag @s remove scheduled_sphere

execute if predicate worldtool:brush/hollow run tag @s add brush_hollow

execute if score @s wt_brush_size matches 1 run clone 0 1 13 0 1 13 ~ ~ ~
execute if score @s wt_brush_size matches 3 run function worldtool:brush/brushes/sphere/gen/3
execute if score @s wt_brush_size matches 5 run function worldtool:brush/brushes/sphere/gen/5
execute if score @s wt_brush_size matches 7 run function worldtool:brush/brushes/sphere/gen/7
execute if score @s wt_brush_size matches 9 run function worldtool:brush/brushes/sphere/gen/9
execute if score @s wt_brush_size matches 11 run function worldtool:brush/brushes/sphere/gen/11
execute if score @s wt_brush_size matches 13 run function worldtool:brush/brushes/sphere/gen/13
execute if score @s wt_brush_size matches 15 run function worldtool:brush/brushes/sphere/gen/15
execute if score @s wt_brush_size matches 17 run function worldtool:brush/brushes/sphere/gen/17
execute if score @s wt_brush_size matches 19 run function worldtool:brush/brushes/sphere/gen/19
execute if score @s wt_brush_size matches 21 run function worldtool:brush/brushes/sphere/gen/21
execute if score @s wt_brush_size matches 23 run function worldtool:brush/brushes/sphere/gen/23
execute if score @s wt_brush_size matches 25 run function worldtool:brush/brushes/sphere/gen/25

execute if score @s wt_brush_size matches 26.. run tellraw @s {"text": "The brush size is too big for this brush","color":"red"}
execute unless entity @s[tag=cmdpos1] run tag @s remove brush_hollow