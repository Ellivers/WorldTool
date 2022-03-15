# Called by worldtool:particles/clock
# Displays the particles

execute if entity @s[tag=wt.position] run function worldtool:particles/general_selection/load

function #worldtool:addon/particles/display
