# Called by worldtool:input_check/player and worldtool:ui_brush/select_block/selected.air
# Sets the block to what you selected

execute if entity @s[tag=wt.select_block.brush] run data remove storage worldtool:storage Temp
execute if entity @s[tag=wt.select_block.brush] run data modify storage worldtool:storage Temp.Block.State set from entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1,sort=nearest,limit=1] BlockState
execute if entity @s[tag=wt.select_block.brush] run kill @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1,sort=nearest,limit=1]

execute if entity @s[tag=!wt.select_block.brush.secondary] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_primary_block
execute if entity @s[tag=wt.select_block.brush.secondary] run item modify entity @s weapon.mainhand worldtool:set_secondary_block

tellraw @s {"nbt":"Translation.\"info.selected_block\"","storage": "worldtool:storage","interpret": true}
function worldtool:ui/sound.change_item

tag @s remove wt.select_block
tag @s remove wt.select_block.brush
tag @s remove wt.select_block.brush.secondary

function worldtool:ui_brush/main
