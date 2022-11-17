# Called by various functions
# Increases a blocks per tick value by 500

execute if score #temp worldtool matches 2147483647 run tag @s add wt.temp
execute if score #temp worldtool matches 2147483647 run scoreboard players set #temp worldtool 200

execute if entity @s[tag=!wt.temp] run scoreboard players add #temp worldtool 200

data modify storage worldtool:storage BlocksPerTick.Preset set value "custom"

tag @s remove wt.temp
