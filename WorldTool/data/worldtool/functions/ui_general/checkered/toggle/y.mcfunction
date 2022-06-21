# Called by worldtool:ui_general/checkered/menu
# Toggle alternating blocks on the Y axis

tag @s[tag=wt.checkered.alternate.y] add wt.temp
tag @s[tag=wt.temp] remove wt.checkered.alternate.y
tag @s[tag=!wt.temp] add wt.checkered.alternate.y

tag @s remove wt.temp

function worldtool:ui_general/checkered/menu
