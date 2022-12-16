# Called by worldtool:process_start/common/block_from_data/from_process and worldtool:process_start/brush/check
# Sets the process block from block data, rather than from a block position

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute unless entity @s run scoreboard players set #ID_temp worldtool 0

# temp worldtool values:
# 1 - primary block
# 2 - both
# 3 - secondary block

scoreboard players set #temp worldtool 0
execute if data storage worldtool:storage Temp.Blocks.Primary run scoreboard players add #temp worldtool 1
execute if data storage worldtool:storage Temp.Blocks.Secondary run scoreboard players add #temp worldtool 3
execute if score #temp worldtool matches 4 run scoreboard players set #temp worldtool 2

scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1..2 run setblock 27451 1 19 minecraft:air
execute if score #temp worldtool matches 1..2 if data storage worldtool:storage Temp.Blocks.Primary.State{Name:"minecraft:air"} run scoreboard players set #temp2 worldtool 1

execute if score #temp worldtool matches 1..2 if score #temp2 worldtool matches 0 run summon minecraft:falling_block 27451 1 19 {Time:-34,Tags:["worldtool","wt.update_block"]}
execute if score #temp worldtool matches 1..2 if score #temp2 worldtool matches 0 positioned 27451 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] BlockState set from storage worldtool:storage Temp.Blocks.Primary.State
execute if score #temp worldtool matches 1..2 if score #temp2 worldtool matches 0 if data storage worldtool:storage Temp.Blocks.Primary.Data positioned 27451 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] TileEntityData set from storage worldtool:storage Temp.Blocks.Primary.Data

scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 2..3 run setblock 27449 1 19 minecraft:air
execute if score #temp worldtool matches 2..3 if data storage worldtool:storage Temp.Blocks.Secondary.State{Name:"minecraft:air"} run scoreboard players set #temp2 worldtool 1

execute if score #temp worldtool matches 2..3 if score #temp2 worldtool matches 0 run summon minecraft:falling_block 27449 1 19 {Time:-34,Tags:["worldtool","wt.update_block"]}
execute if score #temp worldtool matches 2..3 if score #temp2 worldtool matches 0 positioned 27449 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] BlockState set from storage worldtool:storage Temp.Blocks.Secondary.State
execute if score #temp worldtool matches 2..3 if score #temp2 worldtool matches 0 if data storage worldtool:storage Temp.Blocks.Secondary.Data positioned 27449 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] TileEntityData set from storage worldtool:storage Temp.Blocks.Secondary.Data

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool","wt.block_location"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
schedule function worldtool:process_start/common/block_from_data/scheduled 2t
