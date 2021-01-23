execute if entity @s[tag=!wt_exclude_east] run tag @s add wt_toggling
execute if entity @s[tag=!wt_exclude_east] run tag @s add wt_exclude_east
execute if entity @s[tag=wt_exclude_east,tag=!wt_toggling] run tag @s remove wt_exclude_east
tag @s remove wt_toggling
execute as @p run function worldtool:ui/hollow/select_sides