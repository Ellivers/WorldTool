execute unless score $progressBar worldtool matches 1.. run tag @s add settingpb
execute unless score $progressBar worldtool matches 1.. run scoreboard players set $progressBar worldtool 1
execute if entity @s[tag=!settingpb] if score $progressBar worldtool matches 1.. run scoreboard players set $progressBar worldtool 0
tag @s remove settingpb
execute as @p run function worldtool:ui/options/settings