execute if score $forceLoadPositions worldtool matches ..0 run tag @s add settingforceload
execute if score $forceLoadPositions worldtool matches ..0 run scoreboard players set $forceLoadPositions worldtool 1
execute if entity @s[tag=!settingforceload] if score $forceLoadPositions worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 0
tag @s remove settingforceload
function worldtool:ui/options/settings