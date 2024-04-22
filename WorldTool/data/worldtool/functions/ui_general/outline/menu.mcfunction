# Called by worldtool:ui_general/outline/load
# Displays the outline menu

function worldtool:ui/clear_chat
tag @s add wt.menu.outline
tag @s add wt.allow_input

function worldtool:ui_general/back_button

execute unless score @s wt.size matches 1.. run scoreboard players set @s wt.size 1
function worldtool:input_data/message/outline_size

tellraw @s ["",{"nbt":"Translation.\"button.select_block.run.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.run.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.run.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/outline/start"}}]

function worldtool:ui/close_button
function worldtool:ui/anti_feedback_chat_message/load
function worldtool:ui_general/input/start/primary
