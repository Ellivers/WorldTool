execute unless score $progressBar worldtool matches 1.. run tag @s add wt_toggling
execute unless score $progressBar worldtool matches 1.. run scoreboard players set $progressBar worldtool 1
execute if entity @s[tag=!wt_toggling] if score $progressBar worldtool matches 1.. run scoreboard players set $progressBar worldtool 0
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/options/settings
