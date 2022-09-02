# Called by worldtool:ui/warning/insufficient_backup_slots
# Continues starting the shape process

function worldtool:ui_shapes/check_tool

scoreboard players set #shapeStartSuccess worldtool 0
scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run scoreboard players set #shapeStartSuccess worldtool 1
execute if score #shapeStartSuccess worldtool matches 0 run function worldtool:ui/error/shape_position_missing

execute if score #shapeStartSuccess worldtool matches 1 run function worldtool:use_shapes/setup_process
execute if score #shapeStartSuccess worldtool matches 1 run function worldtool:use_shapes/check_process
execute if score #success worldtool matches 1 run function worldtool:use_shapes/start

tag @s add wt.no_space
tag @s add wt.no_sound
function worldtool:ui/anti_feedback_chat_message/load
