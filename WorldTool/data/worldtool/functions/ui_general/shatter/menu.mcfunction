# Called by worldtool:ui_general/shatter/load
# Displays the shatter menu

function worldtool:ui/clear_chat
tag @s add wt.menu.shatter

function worldtool:ui_general/back_button

tellraw @s[tag=wt.shatter.drop_items] {"nbt":"Translation.\"button.shatter.drop_items.on\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shatter.drop_items.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shatter/drop_items_toggle"}}
tellraw @s[tag=!wt.shatter.drop_items] {"nbt":"Translation.\"button.shatter.drop_items.off\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shatter.drop_items.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shatter/drop_items_toggle"}}

tellraw @s ["\n",{"nbt":"Translation.\"button.select_block.run.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.run.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.run.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shatter/start"}}," ",{"nbt":"Translation.\"button.replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shatter.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shatter/replace"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
function worldtool:ui_general/input/start/primary
