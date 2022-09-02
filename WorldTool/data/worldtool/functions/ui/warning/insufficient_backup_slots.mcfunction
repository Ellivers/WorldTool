# Called by worldtool:process_start/common/check/backup_slots
# Displays a warning

function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.WorldTool.SavedProcesses set value []
data modify storage rx.playerdb:io player.data.WorldTool.SavedProcesses append from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]
data modify storage rx.playerdb:io player.data.WorldTool.SavedProcesses append from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]
data modify storage rx.playerdb:io player.data.WorldTool.SavedProcesses append from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

function #rx.playerdb:api/v2/save/self

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"warning.insufficient_backup_slots\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["\n",{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/warning/back"}}," ",{"nbt":"Translation.\"button.continue.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:process_start/common/continue/2"}}]

scoreboard players set #success worldtool 0
