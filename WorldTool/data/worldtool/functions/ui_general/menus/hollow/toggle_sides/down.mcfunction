execute if entity @s[tag=!wt_exclude_down] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_down] run tag @s add wt_exclude_down
execute if entity @s[tag=wt_exclude_down,tag=!wt_toggling] run tag @s remove wt_exclude_down
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/menus/hollow/select_sides