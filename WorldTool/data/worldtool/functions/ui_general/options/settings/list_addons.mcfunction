# Called by worldtool:ui_general/options/settings/menu
# Displays the installed addons

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.addons

tellraw @s [{"nbt":"Translation.\"info.available_addons\"","storage": "worldtool:storage","color": "light_purple","bold":true},"\n"]

function #worldtool:addon/list_addons

function worldtool:ui/anti_feedback_chat_message/load
