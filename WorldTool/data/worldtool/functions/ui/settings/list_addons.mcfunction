# Called by worldtool:ui/settings/menu
# Displays the installed addons

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/settings/back_button

tellraw @s [{"nbt":"Translation.\"info.available_addons\"","storage": "worldtool:storage","color": "light_purple","bold":true},"\n"]

function #worldtool:addon/list_addons

function worldtool:ui/anti_feedback_chat_message/load
