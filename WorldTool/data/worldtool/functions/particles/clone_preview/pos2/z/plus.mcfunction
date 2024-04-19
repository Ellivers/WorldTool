# Called recursively and by worldtool:particles/clone_preview/pos2/load
# Moves one block in the positive Z direction

function worldtool:particles/colors/dark_green
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos1zt worldtool positioned ~ ~ ~1 run function worldtool:particles/clone_preview/pos2/z/plus
