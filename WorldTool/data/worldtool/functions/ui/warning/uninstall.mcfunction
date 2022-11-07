# Called by worldtool:ui/settings/menu
# Displays a warning

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"warning.uninstall\"","storage": "worldtool:storage","color": "gold"}
tellraw @s ["\n",{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back_cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/menu"}}," ",{"nbt":"Translation.\"button.continue.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:technical/uninstall"}}]

function worldtool:ui/anti_feedback_chat_message/load
