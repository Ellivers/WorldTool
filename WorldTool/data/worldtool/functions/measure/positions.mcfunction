# Called by worldtool:ui_general/measure/menu
# Displays the selected positions

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

tellraw @s {"nbt":"Translation.\"info.measure.positions\"","storage":"worldtool:storage","interpret":true}

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
