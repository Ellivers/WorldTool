# Called recursively and by worldtool:particles/clone_preview/pos1/load
# Moves one block in the positive Z direction

function worldtool:particles/colors/light_green
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos2zt worldtool positioned ~ ~ ~1 run function worldtool:particles/clone_preview/pos1/z/plus
