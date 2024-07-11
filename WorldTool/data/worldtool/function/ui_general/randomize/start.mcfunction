# Called by worldtool:ui_general/randomize/menu
# Starts the randomize process

tag @s add wt.setup.randomize
function worldtool:process_start/general/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
