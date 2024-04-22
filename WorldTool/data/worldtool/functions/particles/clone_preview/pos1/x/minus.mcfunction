# Called recursively and by worldtool:particles/clone_preview/pos1/load
# Moves one block in the negative X direction

function worldtool:particles/colors/light_green
scoreboard players remove #particlePosX worldtool 1
execute if score #particlePosX worldtool >= #pos2xt worldtool positioned ~-1 ~ ~ run function worldtool:particles/clone_preview/pos1/x/minus
