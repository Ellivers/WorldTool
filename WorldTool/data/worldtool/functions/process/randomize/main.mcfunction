# Called by various functions
# The process functionality for randomization

scoreboard players add #blocksChecked worldtool 1

# Place a random block from the source area

scoreboard players set #temp worldtool 0
execute if entity @s[tag=!wt.process.randomize.replace.normal,tag=!wt.process.randomize.replace.exclude] run scoreboard players set #temp worldtool 1
execute if entity @s[tag=wt.process.randomize.replace.normal] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #temp worldtool 1
execute if entity @s[tag=wt.process.randomize.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #temp worldtool 1

execute if score #temp worldtool matches 1 as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.temp
execute if score #temp worldtool matches 1 as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source,tag=wt.temp,sort=random,limit=1] at @s run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace force
execute if score #temp worldtool matches 1 run tag @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source,tag=wt.temp] remove wt.temp
execute if score #temp worldtool matches 1 unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomize/-y
