# Called by worldtool:ui_general/smooth/menu
# Starts the smooth process

execute store success score #temp worldtool unless entity @s[tag=!wt.smooth.direction.up,tag=!wt.smooth.direction.down,tag=!wt.smooth.direction.east,tag=!wt.smooth.direction.west,tag=!wt.smooth.direction.north,tag=!wt.smooth.direction.south]

execute if score #temp worldtool matches 0 run tellraw @s {"nbt":"Translation.\"info.smooth.no_directions\"","storage": "worldtool:storage","color": "red"}

execute if score #temp worldtool matches 1 run tag @s add wt.setup.smooth
execute if score #temp worldtool matches 1 run function worldtool:process_start/general/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
