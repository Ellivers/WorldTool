execute if entity @s[tag=!keep] run tag @s add settingkeep
execute if entity @s[tag=!keep] run tag @s add keep
execute if entity @s[tag=keep,tag=!settingkeep] run tag @s remove keep
tag @s remove settingkeep
execute as @p run function worldtool:ui/fill_outline/select