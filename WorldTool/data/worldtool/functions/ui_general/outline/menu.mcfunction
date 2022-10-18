# Called byw worldtool:ui_general/page1
# Displays the outline menu

function worldtool:ui/clear_chat
tag @s add wt.menu.outline
tag @s add wt.allow_input

function worldtool:ui_general/input/start/primary

function worldtool:ui_general/back_button

execute unless score @s wt.thickness matches 1.. run scoreboard players set @s wt.thickness 1
tellraw @s [{"nbt":"Translation.\"label.outline.size\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.outline.size.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.outline.size.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/size/decrease"}},{"score":{"name": "@s","objective": "wt.thickness"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.outline.size.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/size/increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ Size:1 }}}}"}},"\n"]

tellraw @s ["",{"nbt":"Translation.\"button.select_block.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/outline/start"}}]

function worldtool:ui/close_button
function worldtool:ui/anti_feedback_chat_message/load
