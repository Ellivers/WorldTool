execute unless score $reloadMessage worldtool matches 1.. run tag @s add wt_toggling
execute unless score $reloadMessage worldtool matches 1.. run scoreboard players set $reloadMessage worldtool 1
execute if entity @s[tag=!wt_toggling] if score $reloadMessage worldtool matches 1.. run scoreboard players set $reloadMessage worldtool 0
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/options/settings
