# Called recursively and by worldtool:particles/general_selection/pos1/load
# Moves one block in the positive Z direction

function worldtool:particles/colors/blue
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos2zt worldtool positioned ~ ~ ~1 run function worldtool:particles/general_selection/pos1/z/plus
