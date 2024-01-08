# Called by worldtool:technical/tick/player
# Checks if you're holding a tool and clears the highlight if not

execute if entity @s[gamemode=!spectator,predicate=worldtool:tools/any] run function worldtool:use_tool/hold/load
execute if entity @s[tag=wt.highlighting_block,tag=!wt.raycast.hold] run function worldtool:use_tool/hold/remove_highlight

## Remove tags ##
function worldtool:use_tool/remove_tags
