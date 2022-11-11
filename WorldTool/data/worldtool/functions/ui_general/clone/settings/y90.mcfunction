# Called by worldtool:ui_general/clone/rotation/menu
# Changes the rotation

tag @s[tag=wt.clone.mode.template] remove wt.clone.mirror.x
tag @s[tag=wt.clone.mode.template] remove wt.clone.mirror.z

scoreboard players add @s wt.rotY 90
function worldtool:ui_general/clone/rotation/menu
