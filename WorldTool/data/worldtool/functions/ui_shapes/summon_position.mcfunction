# Called by worldtool:use_tool/ray_hit/shape_tool_pos, worldtool:ui_shapes/adjust_position/set_position, and worldtool:process_start/shapes/continuous
# Summons the shape position

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["worldtool","wt.shape_position"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
