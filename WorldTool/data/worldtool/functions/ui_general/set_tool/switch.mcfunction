# Called by worldtool:use_tool/drop/tools/general/picked_up/load
# Switches between setting position 1 and setting position 2

execute if predicate worldtool:tools/general/pos1 run tag @s add wt.temp
execute if entity @s[tag=wt.temp] run function worldtool:ui_general/set_tool/pos2
execute if entity @s[tag=!wt.temp,predicate=worldtool:tools/general/pos2] run function worldtool:ui_general/set_tool/pos1

tag @s remove wt.temp
