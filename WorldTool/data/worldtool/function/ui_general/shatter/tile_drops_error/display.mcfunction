# Called by worldtool:ui_general/shatter/menu
# Displays an error for when tile drops is off and the user tries to enable item drops

tag @s add wt.temp
scoreboard players set #success worldtool 0

function worldtool:ui/clear_chat
tag @s add wt.menu.shatter.tile_drops_error

function worldtool:ui/back_button

tellraw @s {"nbt":"Translation.\"error.shatter.tile_drops_off\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["\n",{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/back_using_tags"}}," ",{"nbt":"Translation.\"button.shatter.enable.name\"","storage": "worldtool:storage","color":"green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shatter.enable.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/shatter/tile_drops_error/enable"}}]

function worldtool:ui/anti_feedback_chat_message/load
