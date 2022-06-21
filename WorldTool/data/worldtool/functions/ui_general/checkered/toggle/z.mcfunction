# Called by worldtool:ui_general/checkered/menu
# Toggle alternating blocks on the Z axis

tag @s[tag=wt.checkered.alternate.z] add wt.temp
tag @s[tag=wt.temp] remove wt.checkered.alternate.z
tag @s[tag=!wt.temp] add wt.checkered.alternate.z

tag @s remove wt.temp

function worldtool:ui_general/checkered/menu
