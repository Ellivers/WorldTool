# Called by worldtool:input_check/player
# Gets the player's input

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Block.State set from entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1,sort=nearest,limit=1] BlockState
data modify storage worldtool:storage Temp.Block.Data set from entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1,sort=nearest,limit=1] TileEntityData
kill @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1,sort=nearest,limit=1]

function worldtool:ui_brush/select_block/selected/selected
