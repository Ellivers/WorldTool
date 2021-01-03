#Toggle the destroy option
execute if entity @s[tag=!wt_destroy] run tag @s add settingdestroy
execute if entity @s[tag=!wt_destroy] run tag @s add wt_destroy
execute if entity @s[tag=wt_destroy,tag=!settingdestroy] run tag @s remove wt_destroy
tag @s remove settingdestroy
execute as @p run function worldtool:ui/random/select