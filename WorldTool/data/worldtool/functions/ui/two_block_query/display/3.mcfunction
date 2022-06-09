# Called by worldtool:ui/two_block_query/display/selected.normal and worldtool:ui/two_block_query/display/selected.exclude
# Displays the block selection for the primary block (the one to replace with)

tag @s remove wt.menu.two_block_query.1
tag @s remove wt.menu.two_block_query.2
tag @s add wt.menu.two_block_query.3
tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/back_button

execute if entity @s[tag=wt.two_block_query.primary,tag=!wt.dont_start_input] run function worldtool:ui/start_input/primary

execute if entity @s[tag=wt.two_block_query.text.replace] run tellraw @s ["",{"nbt":"Translation.\"button.replace_with.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace_with.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/two_block_query/return"}}]
execute if entity @s[tag=wt.two_block_query.text.randomize_exclude] run tellraw @s ["",{"nbt":"Translation.\"button.randomize.select_exclude.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.randomize.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/two_block_query/return"}}]
function #worldtool:addon/ui/two_block_query/display_2

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
