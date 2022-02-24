# Called by worldtool:ui/two_block_query/display/selected.normal and worldtool:ui/two_block_query/display/selected.exclude
# Displays the block selection for the secondary block (the one to replace/filter)

tag @s add wt.menu.two_block_query.1
tag @s remove wt.menu.two_block_query.2
tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/back_button

execute if entity @s[tag=wt.two_block_query.secondary] run function worldtool:ui/start_input/secondary
execute if entity @s[tag=!wt.two_block_query.secondary] run function worldtool:ui/start_input/both

execute if entity @s[tag=wt.two_block_query.text.replace] run tellraw @s ["",{"nbt":"Translation.\"button.to_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~-1 ~ ~ "}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/two_block_query/display/secondary_selected"}}]
function #worldtool:addon/ui/two_block_query/display_1

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
