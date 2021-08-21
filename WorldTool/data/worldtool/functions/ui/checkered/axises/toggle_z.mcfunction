# Toggle the z axis tag (noch stands for no checkered, or something like that)

execute if entity @s[tag=!wt_nochZ] run tag @s add wt_toggling
execute if entity @s[tag=!wt_nochZ] run tag @s add wt_nochZ
execute if entity @s[tag=wt_nochZ,tag=!wt_toggling] run tag @s remove wt_nochZ
tag @s remove wt_toggling
function worldtool:ui/checkered/select
