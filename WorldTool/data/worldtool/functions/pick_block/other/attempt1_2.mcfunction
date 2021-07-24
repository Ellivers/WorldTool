# Called by worldtool:pick_block/other/attempt1_scheduled
# Checks if everything is going correctly. If not, do plan 2

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Item.tag.WorldTool.Block.Data set from block ~ ~ ~
data modify storage worldtool:storage Temp.Item.tag.WorldTool.Block.State set from entity @e[type=minecraft:arrow,tag=worldtool,tag=wt.pick_block,distance=..1,sort=nearest,limit=1] inBlockState

execute store success score #temp worldtool if data storage worldtool:storage Temp.Item.tag.WorldTool.Block.State

kill @e[type=minecraft:arrow,tag=worldtool,tag=wt.pick_block,distance=..1,sort=nearest,limit=1]

execute if score #temp worldtool matches 1 run function worldtool:pick_block/other/finish
execute unless score #temp worldtool matches 1 run function worldtool:pick_block/other/attempt2
