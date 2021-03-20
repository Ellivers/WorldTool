execute unless score $clearChat worldtool matches 1.. run tag @s add wt_toggling
execute unless score $clearChat worldtool matches 1.. run scoreboard players set $clearChat worldtool 1
execute if entity @s[tag=!wt_toggling] if score $clearChat worldtool matches 1.. run scoreboard players set $clearChat worldtool 0
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/menus/options/settings
