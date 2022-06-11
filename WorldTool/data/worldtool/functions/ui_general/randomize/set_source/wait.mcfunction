# Called by worldtool:ui/reopen_menu/after_starting
# Displays a small waiting menu while randomization points are being placed

function worldtool:ui/clear_chat

tellraw @s {"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/randomize/set_source/back"}}

tellraw @s ["\n",{"nbt":"Translation.\"info.wait\"","storage": "worldtool:storage"}]

function worldtool:ui/anti_feedback_chat_message/load
