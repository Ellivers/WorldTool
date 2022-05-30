# Called by worldtool:ui_general/click/options and worldtool:ui_general/click/options_use
# The main options menu

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.options

tellraw @s [{"nbt":"Translation.\"button.adjust_positions.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.adjust_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/load"}}," ",{"nbt":"Translation.\"button.settings.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/menu"}}]

execute if score $addons worldtool matches 1.. run tellraw @s ["\n",{"nbt":"Translation.\"button.available_addons.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.available_addons.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/list_addons"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}," ",{"nbt":"Translation.\"button.empty_queue.name\"","storage": "worldtool:storage","color": "#b5146d","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.empty_queue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/empty_queue"}}]

function worldtool:ui/anti_feedback_chat_message/load
