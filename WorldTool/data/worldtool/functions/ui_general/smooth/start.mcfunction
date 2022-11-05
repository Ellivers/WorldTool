# Called by worldtool:ui_general/smooth/menu
# Starts the smooth process

tag @s add wt.setup.smooth
function worldtool:process_start/common/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
