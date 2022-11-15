# Called by worldtool:ui/settings/menu
# Displays the installed plugins

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/settings/back_button

tellraw @s [{"nbt":"Translation.\"info.available_plugins\"","storage": "worldtool:storage","color": "light_purple","interpret": true},"\n"]

function #worldtool:hooks/list_plugins

function worldtool:ui/anti_feedback_chat_message/load
