# Called by worldtool:ui_general/page2
# Starts the command list process

tag @s add wt.setup.command_list
function worldtool:process_start/common/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
