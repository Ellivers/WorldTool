# Toggle the x axis tag (noch stands for no checkered, or something like that)

execute if entity @s[tag=!wt_nochX] run tag @s add wt_toggling
execute if entity @s[tag=!wt_nochX] run tag @s add wt_nochX
execute if entity @s[tag=wt_nochX,tag=!wt_toggling] run tag @s remove wt_nochX
tag @s remove wt_toggling
function worldtool:ui_general/checkered/select
