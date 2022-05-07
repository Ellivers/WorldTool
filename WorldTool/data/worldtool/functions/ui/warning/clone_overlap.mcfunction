# Called by worldtool:ui_general/clone/calculate_overlap
# Displays a warning

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @a {"nbt":"Translation.\"warning.clone_overlap\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["\n",{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/warning/back"}}," ",{"nbt":"Translation.\"button.continue.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:process_start/common/load"}}]

scoreboard players set #success worldtool 0
