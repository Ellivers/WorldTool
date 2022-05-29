# Called by worldtool:ui_general/options/menu and by various other functions
# Displays the menu for adjusting positions

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.adjust_positions

execute if entity @s[tag=wt.outline_selection] run function worldtool:ui_general/arrange_positions/load

scoreboard players set #temp worldtool 0
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/options/adjust_positions/entity

execute if entity @s[tag=!wt.outline_selection] run tellraw @s [{"nbt":"Translation.\"button.general.particles.off\"","storage": "worldtool:storage","color": "#9729ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.particles.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/particles_on"}},"\n"]
execute if entity @s[tag=wt.outline_selection] run tellraw @s [{"nbt":"Translation.\"button.general.particles.on\"","storage": "worldtool:storage","color": "#9729ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.particles.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/particles_off"}},"\n"]

tellraw @s [{"nbt":"Translation.\"info.measure.positions\"","storage":"worldtool:storage","interpret":true},"\n"]

tellraw @s [{"nbt":"Translation.\"button.swap_positions.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.swap_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/swap_positions"}},"\n"]



function worldtool:ui/anti_feedback_chat_message/load
