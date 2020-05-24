#Sets the block at 0 1 13 to the block you're using with your brush
execute unless entity @s[predicate=!worldtool:brush/air,predicate=!worldtool:brush/water] run tag @s add brush_paint_air
#execute unless entity @s[tag=brush_replace] run setblock 2 1 13 air
setblock 0 1 13 air
execute if predicate worldtool:brush/water run setblock 0 1 13 water
execute unless entity @s[tag=brush_paint_air] run summon falling_block 0 1 13 {Time:-34}
execute unless entity @s[tag=brush_paint_air] positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,sort=nearest,limit=1] BlockState set from entity @s SelectedItem.tag.Block.BlockState
execute unless entity @s[tag=brush_paint_air] positioned 0 1 13 run data modify entity @e[type=minecraft:falling_block,sort=nearest,limit=1] TileEntityData set from entity @s SelectedItem.tag.Block.BlockData
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["setblock_source"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=setblock_source,sort=nearest,limit=1] wt_ID = @s wt_ID
tag @s remove brush_paint_air
#Schedules in 2 ticks so the falling block has time to land
schedule function worldtool:brush/brushes/paint/load_select_area 2t