execute if score $forceLoadCmdPositions worldtool matches ..0 run tag @s add wt_toggling
execute if score $forceLoadCmdPositions worldtool matches ..0 run scoreboard players set $forceLoadCmdPositions worldtool 1
execute if entity @s[tag=!wt_toggling] if score $forceLoadCmdPositions worldtool matches 1.. run scoreboard players set $forceLoadCmdPositions worldtool 0
tag @s remove wt_toggling
execute if score $forceLoadCmdPositions worldtool matches 0 as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless score @s worldtool matches 0 unless entity @s[tag=!cmdpos1,tag=!cmdpos2] at @s run forceload remove ~ ~ 
execute if score $forceLoadCmdPositions worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!cmdpos1,tag=!cmdpos2] store success score @s worldtool run forceload add ~ ~
function worldtool:ui_general/menus/options/settings
