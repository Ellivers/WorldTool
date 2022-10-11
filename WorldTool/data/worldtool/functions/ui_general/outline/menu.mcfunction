# Called byw worldtool:ui_general/page1
# Displays the outline menu

function worldtool:ui/clear_chat
tag @s add wt.menu.outline

function worldtool:ui_general/input/start/primary

function worldtool:ui_general/back_button

function #rx.playerdb:api/v2/get/self

execute store result score #temp worldtool run data get storage rx.playerdb:io player.data.WorldTool.OutlineSize
execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

execute if score $playerdbAvailable worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"label.outline.size\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.outline.size.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.outline.size.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/size/decrease"}},{"score":{"name": "#temp","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.outline.size.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/size/increase"}},"\n"]
execute unless score $playerdbAvailable worldtool matches 1 run tellraw @s ["",{"nbt":"Translation.\"label.outline.size\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shell.side_size.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"info.unavailable\"","storage": "worldtool:storage","color": "gray"},"\n"]

tellraw @s ["",{"nbt":"Translation.\"button.select_block.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/outline/start"}}]

function worldtool:ui/close_button
function worldtool:ui/anti_feedback_chat_message/load
