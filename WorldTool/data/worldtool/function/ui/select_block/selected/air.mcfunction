# Called by worldtool:ui/select_block/select
# Sets the block to air

tag @s remove wt.select_block.brush
data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Block.State.Name set value "minecraft:air"

function worldtool:ui/select_block/selected/selected
