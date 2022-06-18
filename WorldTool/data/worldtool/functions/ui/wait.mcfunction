# Called by various functions
# Please wait...

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s {"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/back_using_tags"}}

tellraw @s ["\n",{"nbt":"Translation.\"info.wait\"","storage": "worldtool:storage"}]

function worldtool:ui/anti_feedback_chat_message/load
