# Called by worldtool:ui_general/smooth/menu
# Toggles a direction

tag @s[tag=wt.smooth.direction.south] add wt.temp
tag @s[tag=wt.temp] remove wt.smooth.direction.south
tag @s[tag=!wt.temp] add wt.smooth.direction.south

tag @s remove wt.temp

function worldtool:ui_general/smooth/menu
