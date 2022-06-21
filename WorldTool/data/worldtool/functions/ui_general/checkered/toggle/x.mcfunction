# Called by worldtool:ui_general/checkered/menu
# Toggle alternating blocks on the X axis

tag @s[tag=wt.checkered.alternate.x] add wt.temp
tag @s[tag=wt.temp] remove wt.checkered.alternate.x
tag @s[tag=!wt.temp] add wt.checkered.alternate.x

tag @s remove wt.temp

function worldtool:ui_general/checkered/menu
