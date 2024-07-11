# Called by worldtool:ui_brush/select_brush/menu
# Displays brushes added by plugins

function worldtool:ui_brush/check_tool

function worldtool:ui/clear_chat
tag @s add wt.menu.brush.plugin_brushes

function worldtool:ui/back_button

tellraw @s [{"nbt":"Translation.\"info.brush.plugin_brushes\"","storage": "worldtool:storage","color": "light_purple"},"\n"]

function #worldtool:hooks/ui_brush/brush_list

function worldtool:ui/anti_feedback_chat_message/load
