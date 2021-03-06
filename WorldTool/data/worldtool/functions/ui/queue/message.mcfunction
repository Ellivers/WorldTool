# Called by various functions
# Displays the queue message

function worldtool:ui/clear_chat

tellraw @s [{"nbt":"Translation.\"info.queue.in_queue\"","storage": "worldtool:storage","color": "gold"},"\n"]

execute store result score #temp worldtool run data get storage worldtool:storage Processes
execute unless score #temp worldtool matches 1.. run tellraw @s {"nbt":"Translation.\"error.queue.no_processes\"","storage": "worldtool:storage","color": "red"}
scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:ui/queue/list
execute if score #temp worldtool matches 1.. if score #temp worldtool < @s wt.queue_pos run tellraw @s {"nbt":"Translation.\"error.queue.invalid_process_count\"","storage": "worldtool:storage","color": "red"}
tellraw @s ["\n",{"nbt":"Translation.\"info.queue.position\"","storage": "worldtool:storage","color": "green"},{"score":{"name": "@s","objective": "wt.queue_pos"}}]

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/back_using_tags"}},"  ",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}}}]
function worldtool:ui/anti_feedback_chat_message/load
