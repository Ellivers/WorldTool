# Called by worldtool:ui_shapes/adjust_position/menu
# Nudges the position 1 block

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool store result score #tempPos worldtool run data get entity @s Pos[2]
scoreboard players operation #tempPos worldtool += @s wt.size
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool store result entity @s Pos[2] double 1 run scoreboard players get #tempPos worldtool

function worldtool:ui_shapes/adjust_position/menu
