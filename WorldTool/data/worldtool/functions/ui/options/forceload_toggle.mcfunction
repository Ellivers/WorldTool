execute if score $forceLoadPositions worldtool matches ..0 run tag @s add settingforceload
execute if score $forceLoadPositions worldtool matches ..0 run scoreboard players set $forceLoadPositions worldtool 1
execute if entity @s[tag=!settingforceload] if score $forceLoadPositions worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 0
tag @s remove settingforceload
execute if score $forceLoadPositions worldtool matches 0 as @e[type=minecraft:area_effect_cloud] unless score @s worldtool matches 0 unless entity @s[tag=!pos1,tag=!pos2,tag=!randomcorner1,tag=!randomcorner2] at @s run forceload remove ~ ~ 
execute if score $forceLoadPositions worldtool matches 1 as @e[type=minecraft:area_effect_cloud] unless entity @s[tag=!pos1,tag=!pos2,tag=!randomcorner1,tag=!randomcorner2] store success score @s worldtool run forceload add ~ ~
function worldtool:ui/options/settings