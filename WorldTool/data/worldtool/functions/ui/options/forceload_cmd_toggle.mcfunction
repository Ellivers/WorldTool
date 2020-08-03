execute if score $forceLoadCmdPositions worldtool matches ..0 run tag @s add settingforceload
execute if score $forceLoadCmdPositions worldtool matches ..0 run scoreboard players set $forceLoadCmdPositions worldtool 1
execute if entity @s[tag=!settingforceload] if score $forceLoadCmdPositions worldtool matches 1.. run scoreboard players set $forceLoadCmdPositions worldtool 0
tag @s remove settingforceload
execute if score $forceLoadCmdPositions worldtool matches 0 as @e[type=minecraft:area_effect_cloud] unless score @s worldtool matches 0 unless entity @s[tag=!cmdpos1,tag=!cmdpos2] at @s run forceload remove ~ ~ 
execute if score $forceLoadCmdPositions worldtool matches 1 as @e[type=minecraft:area_effect_cloud] unless entity @s[tag=!cmdpos1,tag=!cmdpos2] store success score @s worldtool run forceload add ~ ~
function worldtool:ui/options/settings