# Called by worldtool:ui_general/smooth/settings
# Toggles a direction

tag @s[tag=wt.smooth.direction.north] add wt.temp
tag @s[tag=wt.temp] remove wt.smooth.direction.north
tag @s[tag=!wt.temp] add wt.smooth.direction.north

tag @s remove wt.temp

function worldtool:ui_general/smooth/settings
