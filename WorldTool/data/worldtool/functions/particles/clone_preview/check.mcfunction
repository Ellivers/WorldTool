execute if entity @s[tag=!atsetpos] run function worldtool:particles/clone_preview/position/load
execute if entity @s[tag=atsetpos,predicate=worldtool:tool_states/3] run function worldtool:particles/clone_preview/raycast
