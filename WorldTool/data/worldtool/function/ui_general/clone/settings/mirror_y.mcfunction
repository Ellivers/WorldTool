# Called by worldtool:ui_general/clone/rotation/menu
# Toggles mirroring on the Y axis

tag @s[tag=wt.clone.mirror.y] add wt.temp
tag @s[tag=wt.temp] remove wt.clone.mirror.y
tag @s[tag=!wt.temp] add wt.clone.mirror.y

tag @s remove wt.temp

function worldtool:ui_general/clone/rotation/menu
