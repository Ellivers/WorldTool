# Called recursively and by worldtool:particles/clone_preview/pos2/load
# Moves one block in the positive Y direction

function worldtool:particles/colors/dark_green
scoreboard players add #particlePosY worldtool 1
execute if score #particlePosY worldtool <= #pos1yt worldtool positioned ~ ~1 ~ run function worldtool:particles/clone_preview/pos2/y/plus
