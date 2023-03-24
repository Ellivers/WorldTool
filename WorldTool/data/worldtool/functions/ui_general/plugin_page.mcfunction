# Called by worldtool:ui_general/page2
# Displays the plugin page of the General Tool's menu

function worldtool:ui/clear_chat
tag @s add wt.menu.general.plugins

function worldtool:ui_general/back_button

tellraw @s [{"nbt":"Translation.\"info.general.plugins\"","storage": "worldtool:storage","color": "light_purple"},"\n"]

execute if score $generalToolPlugins worldtool matches 1.. run function #worldtool:hooks/ui_general/plugin_page

function worldtool:ui/anti_feedback_chat_message/load
