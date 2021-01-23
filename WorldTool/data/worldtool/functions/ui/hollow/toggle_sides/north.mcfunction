execute if entity @s[tag=!wt_exclude_north] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_north] run tag @s add wt_exclude_north
execute if entity @s[tag=wt_exclude_north,tag=!wt_toggling] run tag @s remove wt_exclude_north
tag @s remove wt_toggling
execute as @p run function worldtool:ui/hollow/select_sides