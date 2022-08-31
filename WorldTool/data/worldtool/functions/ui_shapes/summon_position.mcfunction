# Called by worldtool:use_tool/ray_hit/shape_tool_pos, worldtool:ui_shapes/adjust_position/set_position, and worldtool:use_shapes/continuous
# Summons the shape position

scoreboard players operation #ID_temp worldtool = @s wt.ID
summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.shape_position"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
