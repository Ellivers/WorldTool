# Called by various functions
# Closes any menu

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/stop
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.reciever_marker] if score @s wt.ID = #ID_temp worldtool run kill @s

tag @s remove wt.in_menu
function worldtool:ui/remove_return_tags
function worldtool:ui/remove_menu_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"info.menu_closed\"","storage": "worldtool:storage"}
function worldtool:ui/anti_feedback_chat_message/load
