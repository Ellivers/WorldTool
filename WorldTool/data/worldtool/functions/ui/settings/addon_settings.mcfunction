# Called by worldtool:ui/settings/menu
# Displays settings added by addons

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/settings/back_button

tellraw @s [{"nbt":"Translation.\"label.addon_settings\"","storage": "worldtool:storage","color": "light_purple"},"\n"]

function #worldtool:addon/addon_settings

function worldtool:ui/anti_feedback_chat_message/load
