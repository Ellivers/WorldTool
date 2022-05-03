# Called by worldtool:process_start/common/load
# Displays a warning

function worldtool:ui/clear_chat
tellraw @a {"nbt":"Translation.\"warning.size\"","storage": "worldtool:storage","color": "gold","interpret": true}
tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","value": "Translation.\"button.back_cancel.description\""},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/warning/back"}}," ",{"nbt":"Translation.\"buton.continue.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","value": "Translation.\"button.continue.description\""},"clickEvent": {"action": "run_command","value": "/function worldtool:process_start/common/continue1"}}]

scoreboard players set #success worldtool 0
