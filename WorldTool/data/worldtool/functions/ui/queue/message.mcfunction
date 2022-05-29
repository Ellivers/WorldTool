# Called by worldtool:ui/queue/load and worldtool:ui/queue/move
# Displays the queue message

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s [{"nbt":"Translation.\"info.queue.in_queue\"","storage": "worldtool:storage","color": "gold"},"\n"]

execute store result score #temp worldtool run data get storage worldtool:storage Processes
execute unless score #temp worldtool matches 2.. run tellraw @s {"nbt":"Translation.\"error.queue.no_processes\"","storage": "worldtool:storage","color": "red"}

scoreboard players operation #temp3 worldtool = #temp worldtool
scoreboard players set #temp4 worldtool 0
scoreboard players set #temp5 worldtool 0
scoreboard players operation #ID_temp worldtool = @s wt.ID
function worldtool:ui/queue/get_queue_position

scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:ui/queue/list

tellraw @s ["\n",{"nbt":"Translation.\"info.queue.position\"","storage": "worldtool:storage","interpret": true},"\n"]

tellraw @s {"nbt":"Translation.\"info.queue.leave_warning\"","storage": "worldtool:storage"}
tellraw @s ["",{"nbt":"Translation.\"button.queue.leave.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.queue.leave.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/queue/back"}},"  ",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}]
function worldtool:ui/anti_feedback_chat_message/load
