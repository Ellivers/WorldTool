scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool at @s run tp @s ~-1 ~ ~
function worldtool:ui/tool_shapes/move_selection/select
