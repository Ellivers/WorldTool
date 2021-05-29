# Called by worldtool:drop_tool/check
# Switches pos 2 to pos 1

data merge entity @s {Item:{tag:{display:{Name:'{"nbt":"Translation.\"item.general.pos1\"","storage":"worldtool:storage"}'}},WorldTool:{ToolState:"pos1"}}}
execute if score #temp_sneaking worldtool matches 1 run function worldtool:ui_general/click/load
function worldtool:drop_tool/give_back
