#Sets the block at 2 1 13 to the block you're replacing with your brush

#execute unless entity @s[predicate=!worldtool:brush/replace_air,predicate=!worldtool:brush/replace_water] run tag @s add brush_replace_air
setblock 2 1 13 air
#execute if entity @s[predicate=worldtool:brush/replace_water] run setblock 2 1 13 water
execute unless entity @s[tag=brush_replace_air] run summon falling_block 2 1 13 {Time:-34,Tags:["worldtool"]}
execute unless entity @s[tag=brush_replace_air] positioned 2 1 13 run data modify entity @e[type=minecraft:falling_block,sort=nearest,limit=1] BlockState set from entity @s SelectedItem.tag.ReplaceBlock.BlockState
execute unless entity @s[tag=brush_replace_air] positioned 2 1 13 run data modify entity @e[type=minecraft:falling_block,sort=nearest,limit=1] TileEntityData set from entity @s SelectedItem.tag.ReplaceBlock.BlockData
#tag @s remove brush_replace_air
function worldtool:brush/brushes/main/main