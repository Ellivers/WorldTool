# Called recursively and by worldtool:particles/randomization_source_selection/pos1/load
# Moves one block in the negative Y direction

function worldtool:particles/colors/light_yellow
scoreboard players remove #particlePosY worldtool 1
execute if score #particlePosY worldtool >= #pos2yt worldtool positioned ~ ~-1 ~ run function worldtool:particles/randomization_source_selection/pos1/y/minus
