# Called by various functions
# The process functionality for shatter

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

scoreboard players set #temp worldtool 0
execute at @s[tag=!wt.process.shatter.replace.normal,tag=!wt.process.shatter.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players set #temp worldtool 1
execute at @s[tag=wt.process.shatter.replace.normal] store success score #temp worldtool unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all
execute at @s[tag=wt.process.shatter.replace.exclude] store success score #temp worldtool unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all

execute if entity @s[tag=!wt.process.shatter.drop_items] run gamerule doTileDrops false
execute if score #temp worldtool matches 1 at @s run setblock ~ ~ ~ minecraft:air destroy
execute if score #tileDropsEnabled worldtool matches 1 run gamerule doTileDrops true

execute if score #temp worldtool matches 1 run scoreboard players add #blocksPlaced worldtool 1
execute if score #temp worldtool matches 1 at @s run clone 27451 1 19 27451 1 19 ~ ~ ~

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shatter/-y
