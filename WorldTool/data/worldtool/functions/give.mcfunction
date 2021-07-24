# Called by users
# Gives all tools

loot give @s loot worldtool:general_tool
loot give @s loot worldtool:brush_tool

function #worldtool:addon/give_tools

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
