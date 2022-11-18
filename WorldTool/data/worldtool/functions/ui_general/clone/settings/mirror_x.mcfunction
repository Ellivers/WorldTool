# Called by worldtool:ui_general/clone/rotation/menu
# Toggles mirroring on the X axis

tag @s[tag=wt.clone.mode.template] remove wt.clone.mirror.z

tag @s[tag=wt.clone.mirror.x] add wt.temp
tag @s[tag=wt.temp] remove wt.clone.mirror.x
tag @s[tag=!wt.temp] add wt.clone.mirror.x

tag @s remove wt.temp

function worldtool:ui_general/clone/rotation/menu
