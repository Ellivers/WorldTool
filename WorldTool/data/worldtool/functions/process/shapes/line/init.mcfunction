# Called by various shape generation functions
# Starts drawing a line

scoreboard players set #replaceType worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.normal] run scoreboard players set #replaceType worldtool 1
execute if entity @s[tag=wt.process.shapes.replace.exclude] run scoreboard players set #replaceType worldtool 2

scoreboard players operation #length_temp worldtool = #lengthReached worldtool
scoreboard players add #length_temp worldtool 1

execute store success score #shapeHollow worldtool if entity @s[tag=wt.process.shapes.hollow]

scoreboard players set #temp worldtool -1

execute if score #shapeRaycastType worldtool matches 1 run function worldtool:process/shapes/line/loop1
execute if score #shapeRaycastType worldtool matches 2 run function worldtool:process/shapes/line/loop2
