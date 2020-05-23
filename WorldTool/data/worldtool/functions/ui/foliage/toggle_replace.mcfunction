execute if entity @s[tag=!wt_replace_foliage] run tag @s add settingreplace
execute if entity @s[tag=!wt_replace_foliage] run tag @s add wt_replace_foliage
execute if entity @s[tag=wt_replace_foliage,tag=!settingreplace] run tag @s remove wt_replace_foliage
tag @s remove settingreplace
execute as @p run function worldtool:ui/foliage/select