# Called recursively and by worldtool:particles/paste_preview/pos2/load
# Moves one block in the negative Y direction

function worldtool:particles/colors/aqua
scoreboard players remove #particlePosY worldtool 1
execute if score #particlePosY worldtool >= #pos2yt worldtool positioned ~ ~-1 ~ run function worldtool:particles/paste_preview/pos2/y
