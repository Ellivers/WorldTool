# Unused file. Previously called by worldtool:ui/settings/settings/enable_backups_toggle
# Just a little warning

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s {"nbt":"Translation.\"info.enable_backups\"","storage": "worldtool:storage"}

tellraw @s ["\n",{"nbt":"Translation.\"button.cancel.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/menu"}}," ",{"nbt":"Translation.\"button.continue2.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.continue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/settings/enable_backups_enable"}}]

function worldtool:ui/anti_feedback_chat_message/load
