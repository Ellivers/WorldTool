execute if entity @s[tag=!wt_exclude_south] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_south] run tag @s add wt_exclude_south
execute if entity @s[tag=wt_exclude_south,tag=!wt_toggling] run tag @s remove wt_exclude_south
tag @s remove wt_toggling
execute as @p run function worldtool:ui/hollow/select_sides