# Called recursively and by worldtool:particles/paste_preview/pos2/load
# Moves one block in the negative Z direction

function worldtool:particles/colors/aqua
scoreboard players remove #particlePosZ worldtool 1
execute if score #particlePosZ worldtool >= #pos2zt worldtool positioned ~ ~ ~-1 run function worldtool:particles/paste_preview/pos2/z
