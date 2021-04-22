execute if entity @s[tag=!atsetpos] run tag @s add wt_toggling
execute if entity @s[tag=!atsetpos] run tag @s add atsetpos
execute if entity @s[tag=atsetpos,tag=!wt_toggling] run tag @s remove atsetpos
tag @s remove wt_toggling

function worldtool:ui_general/menus/clone/select