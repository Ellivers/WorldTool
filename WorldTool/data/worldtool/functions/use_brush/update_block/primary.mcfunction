# Called by worldtool:use_brush/update_block/load
# Sets the primary process block to the one selected for the brush

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Block set from entity @s SelectedItem.tag.WorldTool.PrimaryBlock

summon minecraft:falling_block 0 1 13 {Time:-34,Tags:["worldtool","wt.brush_block"]}

                                                       execute positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.brush_block,sort=nearest,limit=1] BlockState set from storage worldtool:storage Temp.Block.BlockState
execute if data storage worldtool:storage Temp.Block.BlockData positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.brush_block,sort=nearest,limit=1] TileEntityData set from storage worldtool:storage Temp.Block.BlockData
