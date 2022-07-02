# Called by worldtool:ui_general/options/menu
# Menu for pasting an area from the clipboard

function worldtool:ui/clear_chat
function worldtool:ui/back_button

execute if predicate worldtool:tools/general/pastepos run function worldtool:ui/sound.change_item
execute if predicate worldtool:tools/general/pastepos run item modify entity @s weapon.mainhand worldtool:general_tool/pos1

execute if entity @s[tag=wt.outline_selection] run tag @s add wt.particles
tag @s add wt.menu.paste_area

execute if entity @s[tag=wt.outline_selection] run function worldtool:ui_general/arrange_positions/load

execute if entity @s[tag=!wt.outline_selection] run tellraw @s [{"nbt":"Translation.\"button.general.particles.off\"","storage": "worldtool:storage","color": "#9729ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.particles.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/particles_on"}},"\n"]
execute if entity @s[tag=wt.outline_selection] run tellraw @s [{"nbt":"Translation.\"button.general.particles.on\"","storage": "worldtool:storage","color": "#9729ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.particles.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/particles_off"}},"\n"]

scoreboard players set #temp worldtool 0
function worldtool:technical/common/get_position_counts
execute if score #pos1count worldtool matches 1 if score #pos2count worldtool matches 1 run scoreboard players set #temp worldtool -1

execute if score #temp worldtool matches -1 run tellraw @s {"nbt":"Translation.\"button.paste_area.current_pos.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.current_pos.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/options/save_load/paste/at_pos1"}}
execute unless score #temp worldtool matches -1 run tellraw @s {"nbt":"Translation.\"button.paste_area.current_pos.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.no_positions.description\"","storage": "worldtool:storage"}}}
tellraw @s {"nbt":"Translation.\"button.paste_area.player_pos.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.player_pos.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/options/save_load/paste/start"}}
tellraw @s {"nbt":"Translation.\"button.paste_area.select_pos.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.select_pos.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/options/save_load/paste/select_pos"}}

function worldtool:ui/anti_feedback_chat_message/load
