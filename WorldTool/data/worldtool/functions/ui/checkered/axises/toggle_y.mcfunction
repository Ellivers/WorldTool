execute if entity @s[tag=!wt_nochY] run tag @s add wt_toggling
execute if entity @s[tag=!wt_nochY] run tag @s add wt_nochY
execute if entity @s[tag=wt_nochY,tag=!wt_toggling] run tag @s remove wt_nochY
tag @s remove wt_toggling
function worldtool:ui/checkered/select
