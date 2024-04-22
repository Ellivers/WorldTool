# Called by worldtool:input_check/player
# Sets the edge detection limit to a manually entered value

function worldtool:input_data/get/smooth_edge_detection_limit
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if score @s wt.size matches ..0 run scoreboard players set @s wt.size 1

function worldtool:ui_general/smooth/settings
