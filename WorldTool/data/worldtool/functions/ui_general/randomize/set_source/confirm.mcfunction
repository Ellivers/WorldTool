# Called by worldtool:ui_general/randomize/pos2

function worldtool:ui_general/check_tool

function worldtool:ui/clear_chat
function worldtool:ui/back_button
tag @s add wt.menu.randomize.set_source.confirm

execute if entity @s[tag=wt.helper_particles.in_menu] run tag @s add wt.particles

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

tag @s add wt.no_message
function worldtool:measure/area/measure

execute if score #totalArea worldtool >= $randomizationSourceSizeWarnLimit worldtool run tellraw @s [{"nbt":"Translation.\"warning.randomization_source_size\"","storage": "worldtool:storage","color": "gold"},"\n"]

tellraw @s [{"nbt":"Translation.\"button.randomize.exclude.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.randomize.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/randomize/set_source/exclude"}}," ",{"nbt":"Translation.\"button.randomize.continue.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.randomize.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/randomize/set_source/start"}}]

function worldtool:ui/anti_feedback_chat_message/load
