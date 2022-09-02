# Called by worldtool:use_shapes/setup_process
# Displays a warning

data remove storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"warning.insufficient_backup_slots\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["\n",{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/menu"}}," ",{"nbt":"Translation.\"button.continue.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:use_shapes/continue/1"}}]

scoreboard players set #success worldtool 0
