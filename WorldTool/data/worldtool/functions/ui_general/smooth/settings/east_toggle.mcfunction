# Called by worldtool:ui_general/smooth/menu
# Toggles a direction

tag @s[tag=wt.smooth.direction.east] add wt.temp
tag @s[tag=wt.temp] remove wt.smooth.direction.east
tag @s[tag=!wt.temp] add wt.smooth.direction.east

tag @s remove wt.temp

function worldtool:ui_general/smooth/menu
