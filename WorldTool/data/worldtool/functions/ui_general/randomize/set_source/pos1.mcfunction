# Called by worldtool:ui_general/randomize/menu and worldtool:ui_general/randomize/set_source/pos2
# Prompts the user to select a source for the randomization

function worldtool:ui_general/check_tool

function worldtool:ui/clear_chat
function worldtool:ui/back_button
tag @s add wt.menu.randomize.set_source.pos1

execute unless predicate worldtool:tools/general/sourcepos run function worldtool:ui/sound.change_item
item modify entity @s weapon.mainhand worldtool:general_tool/sourcepos

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp worldtool 0
execute if entity @s[tag=wt.helper_particles] as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner] if score @s wt.ID = #ID_temp worldtool run scoreboard players add #temp worldtool 1
execute if score #temp worldtool matches 2.. if entity @s[tag=wt.helper_particles] run tag @s add wt.particles

tellraw @s {"nbt":"Translation.\"info.randomize.select_source\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["",{"nbt":"Translation.\"info.randomize.select_position.1\"","storage": "worldtool:storage"},"\n\n",{"nbt":"Translation.\"button.set_pos1.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_pos1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:use_tool/ray_hit/general/randomization_source/pos1"}}]

function worldtool:ui/anti_feedback_chat_message/load
