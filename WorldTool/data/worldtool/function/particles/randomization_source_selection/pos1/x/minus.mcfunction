# Called recursively and by worldtool:particles/randomization_source_selection/pos1/load
# Moves one block in the negative X direction

function worldtool:particles/colors/light_yellow
scoreboard players remove #particlePosX worldtool 1
execute if score #particlePosX worldtool >= #pos2xt worldtool positioned ~-1 ~ ~ run function worldtool:particles/randomization_source_selection/pos1/x/minus
