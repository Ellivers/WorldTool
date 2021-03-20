execute if entity @s[tag=!wt_exclude_up] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_up] run tag @s add wt_exclude_up
execute if entity @s[tag=wt_exclude_up,tag=!wt_toggling] run tag @s remove wt_exclude_up
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/menus/hollow/select_sides