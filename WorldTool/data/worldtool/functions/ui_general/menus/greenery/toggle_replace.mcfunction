execute if entity @s[tag=!wt_replace_greenery] run tag @s add settingreplace
execute if entity @s[tag=!wt_replace_greenery] run tag @s add wt_replace_greenery
execute if entity @s[tag=wt_replace_greenery,tag=!settingreplace] run tag @s remove wt_replace_greenery
tag @s remove settingreplace
execute as @p run function worldtool:ui_general/menus/greenery/select