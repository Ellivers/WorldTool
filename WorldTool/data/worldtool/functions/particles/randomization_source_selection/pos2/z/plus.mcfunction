# Called recursively and by worldtool:particles/randomization_source_selection/pos2/load
# Moves one block in the positive Z direction

function worldtool:particles/colors/dark_yellow
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos2zt worldtool positioned ~ ~ ~1 run function worldtool:particles/randomization_source_selection/pos2/z/plus
