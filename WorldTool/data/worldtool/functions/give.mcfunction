# Called manually
# Gives all tools

loot give @s loot worldtool:general_tool
loot give @s loot worldtool:brush_tool
loot give @s loot worldtool:shape_tool

function #worldtool:hooks/give_tools

tag @s add wt.no_space
tag @s add wt.no_sound
function worldtool:ui/anti_feedback_chat_message/load
