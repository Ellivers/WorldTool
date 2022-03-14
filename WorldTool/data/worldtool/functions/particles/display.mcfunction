# Called by worldtool:particles/clock
# Displays the particles

execute if entity @s[tag=wt.pos1] run function worldtool:particles/general_selection/load

function #worldtool:addon/particles/display
