# Called by worldtool:ui_general/repeat/menu
# Starts the repeat process

execute store success score #temp worldtool if entity @s[scores={wt.amountX=0,wt.amountY=0,wt.amountZ=0}]

execute if score #temp worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.repeat.no_amounts\"","storage": "worldtool:storage","color": "red"}

execute if score #temp worldtool matches 0 run tag @s add wt.setup.repeat
execute if score #temp worldtool matches 0 run function worldtool:process_start/common/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
