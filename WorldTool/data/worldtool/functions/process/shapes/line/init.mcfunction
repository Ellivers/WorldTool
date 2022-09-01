# Called by various shape generation functions
# Starts drawing a line

scoreboard players set #replaceType worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.normal] run scoreboard players set #replaceType worldtool 1
execute if entity @s[tag=wt.process.shapes.replace.exclude] run scoreboard players set #replaceType worldtool 2

execute store success score #shapeHollow worldtool if entity @s[tag=wt.process.shapes.hollow]

scoreboard players set #temp worldtool -1

function worldtool:process/shapes/line/loop
