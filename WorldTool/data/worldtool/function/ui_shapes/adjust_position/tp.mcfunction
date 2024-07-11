# Called by worldtool:ui_shapes/adjust_position/menu
# Teleports the user to the selected position

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool at @s as @a if score @s wt.ID = #ID_temp worldtool run tp ~ ~ ~

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
