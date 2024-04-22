# Called recursively and by worldtool:particles/general_selection/pos1/load
# Moves one block in the positive Y direction

function worldtool:particles/colors/blue
scoreboard players add #particlePosY worldtool 1
execute if score #particlePosY worldtool <= #pos2yt worldtool if score #particlePosY worldtool <= $outlineLengthLimit worldtool positioned ~ ~1 ~ run function worldtool:particles/general_selection/pos1/y/plus
