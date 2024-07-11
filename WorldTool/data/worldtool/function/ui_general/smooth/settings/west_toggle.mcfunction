# Called by worldtool:ui_general/smooth/settings
# Toggles a direction

tag @s[tag=wt.smooth.direction.west] add wt.temp
tag @s[tag=wt.temp] remove wt.smooth.direction.west
tag @s[tag=!wt.temp] add wt.smooth.direction.west

tag @s remove wt.temp

function worldtool:ui_general/smooth/settings
