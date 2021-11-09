# Called by various functions
# Sets a shape preview corner/point

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool at @s run summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.shape_preview_marker","wt.temp"]}

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_preview_marker,tag=wt.temp,sort=nearest,limit=1] run function worldtool:use_shapes/preview_layout/set_point.entity
