# Called by worldtool:drop_tool/check
# Switches pos 1 to pos 2

data merge entity @s {Item:{tag:{display:{Name:'{"nbt":"Translation.\"item.general.pos2\"","storage":"worldtool:storage"}'}},WorldTool:{ToolState:"pos2"}}}
execute if score #temp_sneaking worldtool matches 1 run function worldtool:ui_general/click/load
function worldtool:drop_tool/give_back
