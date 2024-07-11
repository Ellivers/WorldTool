# Called by worldtool:ui/queue/load and worldtool:technical/queue/move
# Displays the queue message

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tag @s remove wt.dont_reopen_menu

execute store result score #queueProcessCount worldtool run data get storage worldtool:storage Processes
execute if score #queueProcessCount worldtool matches 1 store result score #queueHiddenProcesses worldtool run data get storage worldtool:storage Processes[0].Hidden

execute unless score #queueHiddenProcesses worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.queue.in_queue\"","storage": "worldtool:storage","color": "gold"},"\n"]
execute if score #queueHiddenProcesses worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.queue.in_queue.hidden_process\"","storage": "worldtool:storage","color": "gold"},"\n"]

execute unless score #queueProcessCount worldtool matches 2.. run tellraw @s {"nbt":"Translation.\"error.queue.no_processes\"","storage": "worldtool:storage","color": "red"}

scoreboard players set #queuePos worldtool 0
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
scoreboard players operation #ID_temp worldtool = @s wt.ID
function worldtool:ui/queue/get_queue_position

scoreboard players operation #temp worldtool = #queueProcessCount worldtool
execute if score #queueProcessCount worldtool matches 1.. run function worldtool:ui/queue/list

tellraw @s ["\n",{"nbt":"Translation.\"info.queue.position\"","storage": "worldtool:storage","interpret": true},"\n"]

tellraw @s {"nbt":"Translation.\"info.queue.leave_warning\"","storage": "worldtool:storage"}
tellraw @s ["",{"nbt":"Translation.\"button.queue.leave.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.queue.leave.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/queue/back"}},"  ",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}]
function worldtool:ui/anti_feedback_chat_message/load
