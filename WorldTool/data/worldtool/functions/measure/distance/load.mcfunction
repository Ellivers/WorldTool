# Called by worldtool:ui_general/measure/menu
# Gets the distance between positions 1 and 2

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

function worldtool:measure/distance/measure

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
