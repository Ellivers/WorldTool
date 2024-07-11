# Called by worldtool:particles/player
# Displays clone preview particles

execute if entity @s[tag=!wt.clone.at_player,predicate=worldtool:tools/general/clonepos] run function worldtool:particles/clone_preview/raycast_start
execute if entity @s[tag=wt.clone.at_player] run function worldtool:particles/clone_preview/display
