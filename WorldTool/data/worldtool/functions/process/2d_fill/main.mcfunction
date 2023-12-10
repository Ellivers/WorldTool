
scoreboard players add #blocksChecked worldtool 1

execute if block ~ ~ ~ #worldtool:air run tag @s remove wt.process.2d_fill.special_mode
execute if block ~ ~ ~ #worldtool:air run tag @s remove wt.process.2d_fill.special_mode.track_end

#tp @e[type=armor_stand,limit=1] ~ ~1 ~
#execute store result entity @e[type=armor_stand,limit=1] Air short 1 run time query gametime
setblock ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"}

scoreboard players operation #minX worldtool < #processPosX worldtool
scoreboard players operation #maxX worldtool > #processPosX worldtool
scoreboard players operation #minY worldtool < #processPosY worldtool
scoreboard players operation #maxY worldtool > #processPosY worldtool
scoreboard players operation #minZ worldtool < #processPosZ worldtool
scoreboard players operation #maxZ worldtool > #processPosZ worldtool

execute if entity @s[tag=wt.process.2d_fill.special_mode.track_end] unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #processPosX worldtool = #processEndPosX worldtool if score #processPosY worldtool = #processEndPosY worldtool if score #processPosZ worldtool = #processEndPosZ worldtool run scoreboard players add #timesEndReached worldtool 1
execute if entity @s[tag=wt.process.2d_fill.special_mode.track_end] if score #timesEndReached worldtool matches 1 run function worldtool:process/complete

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/check/get_direction

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #temp2 worldtool matches 0 if entity @s[tag=!wt.process.2d_fill.special_mode] run function worldtool:process/2d_fill/set_special_mode
execute if entity @s[tag=wt.process.2d_fill.special_mode,tag=!wt.process.2d_fill.special_mode.track_end] if score #temp2 worldtool matches 2.. run function worldtool:process/2d_fill/start_tracking_end

scoreboard players operation #reverseDirection worldtool = #temp2 worldtool
scoreboard players remove #reverseDirection worldtool 2
execute if score #reverseDirection worldtool matches ..0 run scoreboard players add #reverseDirection worldtool 4

execute if score #temp2 worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/-z
execute if score #temp2 worldtool matches 2 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/x
execute if score #temp2 worldtool matches 3 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/z
execute if score #temp2 worldtool matches 4 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/-x

#execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/complete
