# Called by clickEvent from worldtool:ui_general/menus/checkered/select.pos1
# Toggles the keep option
execute if entity @s[tag=!keep] run tag @s add wt_toggling
execute if entity @s[tag=!keep] run tag @s add keep
execute if entity @s[tag=keep,tag=!wt_toggling] run tag @s remove keep
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/menus/checkered/select
