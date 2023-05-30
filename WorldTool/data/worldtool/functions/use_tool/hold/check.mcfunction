# Called by worldtool:technical/tick/player
# Checks if you're holding a tool and clears the highlight if not

execute if predicate worldtool:tools/any run function worldtool:use_tool/hold/load
execute if entity @s[predicate=!worldtool:tools/any,tag=wt.highlighting_block] run function worldtool:use_tool/hold/remove_highlight
