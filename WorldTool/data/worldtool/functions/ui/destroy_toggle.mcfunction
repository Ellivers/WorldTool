execute if entity @s[tag=!wt_destroy] if score @s wt_ID = @p wt_ID run tag @s add settingdestroy
execute if entity @s[tag=!wt_destroy] if score @s wt_ID = @p wt_ID run tag @s add wt_destroy
execute if entity @s[tag=wt_destroy,tag=!settingdestroy] if score @s wt_ID = @p wt_ID run tag @s remove wt_destroy
tag @s remove settingdestroy
execute as @p run function worldtool:ui/select