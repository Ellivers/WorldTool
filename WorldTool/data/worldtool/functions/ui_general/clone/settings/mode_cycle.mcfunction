# Called by worldtool:ui_general/clone/menu
# Cycles the current cloning mode

tag @s[tag=wt.clone.mode.standard] add wt.temp
tag @s remove wt.clone.mode.standard
tag @s remove wt.clone.mode.template

tag @s[tag=wt.temp] add wt.clone.mode.template
tag @s[tag=!wt.temp] add wt.clone.mode.standard

tag @s remove wt.temp

function worldtool:ui_general/clone/menu
