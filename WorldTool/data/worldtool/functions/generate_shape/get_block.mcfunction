# Sets the block at 0 1 13 to the block you're using with your brush
execute if entity @s[predicate=worldtool:brush/air] run tag @s add brush_paint_air
setblock 0 1 13 air
execute unless entity @s[tag=brush_paint_air] run summon falling_block 0 1 13 {Time:-34,Tags:["worldtool"]}
execute unless entity @s[tag=brush_paint_air] positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,sort=nearest,limit=1] BlockState set from entity @s SelectedItem.tag.Block.BlockState
execute unless entity @s[tag=brush_paint_air] positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,sort=nearest,limit=1] TileEntityData set from entity @s SelectedItem.tag.Block.BlockData
tag @s remove brush_paint_air
# Schedules in 2 ticks so the falling block has time to land
tag @s add wt_ticktag
schedule function worldtool:generate_shape/get_block.tick 2t
