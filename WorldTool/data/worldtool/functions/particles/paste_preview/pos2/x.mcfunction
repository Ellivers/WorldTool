# Called recursively and by worldtool:particles/paste_preview/pos2/load
# Moves one block in the negative X direction

function worldtool:particles/colors/aqua
scoreboard players remove #particlePosX worldtool 1
execute if score #particlePosX worldtool >= #pos2xt worldtool positioned ~-1 ~ ~ run function worldtool:particles/paste_preview/pos2/x
