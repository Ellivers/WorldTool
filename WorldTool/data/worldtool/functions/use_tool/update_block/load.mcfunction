# Called by worldtool:use_tool/update_block/from_item and worldtool:process_start/shapes/start
# Sets the process block to the one selected for the brush and shape generation tools

scoreboard players operation #ID_temp worldtool = @s wt.ID

tag @s remove wt.block.primary
tag @s remove wt.block.primary.air
tag @s remove wt.block.secondary
tag @s remove wt.block.secondary.air

tag @s add wt.block.primary
tag @s[predicate=worldtool:brush_tool/brushes/replace] add wt.block.secondary
tag @s[predicate=worldtool:tools/shapes,predicate=!worldtool:shape_tool/settings/replace/none] add wt.block.secondary

function #worldtool:addon/use_tool/update_block/add_tags

data remove storage worldtool:storage Temp.Block

execute if entity @s[tag=wt.block.primary] run data modify storage worldtool:storage Temp.Block set from storage worldtool:storage Temp.Blocks.Primary
execute if entity @s[tag=wt.block.primary] run setblock 27451 1 19 minecraft:air
execute if entity @s[tag=wt.block.primary] if data storage worldtool:storage Temp.Block.State{Name:"minecraft:air"} run tag @s add wt.block.primary.air

execute if entity @s[tag=wt.block.primary,tag=!wt.block.primary.air] run summon minecraft:falling_block 27451 1 19 {Time:-34,Tags:["worldtool","wt.update_block"]}
execute if entity @s[tag=wt.block.primary,tag=!wt.block.primary.air] positioned 27451 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] BlockState set from storage worldtool:storage Temp.Block.State
execute if entity @s[tag=wt.block.primary,tag=!wt.block.primary.air] if data storage worldtool:storage Temp.Block.Data positioned 27451 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] TileEntityData set from storage worldtool:storage Temp.Block.Data

execute if entity @s[tag=wt.block.secondary] run data modify storage worldtool:storage Temp.Block set from storage worldtool:storage Temp.Blocks.Secondary
execute if entity @s[tag=wt.block.secondary] run setblock 27449 1 19 minecraft:air
execute if entity @s[tag=wt.block.secondary] if data storage worldtool:storage Temp.Block.State{Name:"minecraft:air"} run tag @s add wt.block.secondary.air

execute if entity @s[tag=wt.block.secondary,tag=!wt.block.secondary.air] run summon minecraft:falling_block 27449 1 19 {Time:-34,Tags:["worldtool","wt.update_block"]}
execute if entity @s[tag=wt.block.secondary,tag=!wt.block.secondary.air] positioned 27449 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] BlockState set from storage worldtool:storage Temp.Block.State
execute if entity @s[tag=wt.block.secondary,tag=!wt.block.secondary.air] if data storage worldtool:storage Temp.Block.Data positioned 27449 1 19 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.update_block,sort=nearest,limit=1] TileEntityData set from storage worldtool:storage Temp.Block.Data

function #worldtool:addon/use_tool/update_block/remove_tags

tag @s remove wt.block.primary
tag @s remove wt.block.primary.air
tag @s remove wt.block.secondary
tag @s remove wt.block.secondary.air

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool","wt.block_location"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
tag @s add wt.update_block.scheduled
schedule function worldtool:use_tool/update_block/scheduled 2t
