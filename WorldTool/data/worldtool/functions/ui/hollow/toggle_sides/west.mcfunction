execute if entity @s[tag=!wt_exclude_west] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_west] run tag @s add wt_exclude_west
execute if entity @s[tag=wt_exclude_west,tag=!wt_toggling] run tag @s remove wt_exclude_west
tag @s remove wt_toggling
execute as @p run function worldtool:ui/hollow/select_sides