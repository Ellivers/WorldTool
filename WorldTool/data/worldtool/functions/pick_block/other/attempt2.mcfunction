# Called by worldtool:pick_block/other/attempt1_2
# If the first method doesn't succeed, try breaking the block instead

scoreboard players operation #ID_temp worldtool = @s wt.ID

setblock ~ ~-1 ~ minecraft:light_blue_shulker_box
loot replace block ~ ~-1 ~ container.0 mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch"}]}
data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Item.tag.WorldTool.Block.Data set from block ~ ~ ~
data modify storage worldtool:storage Temp.Item.tag.WorldTool.Block.State.Name set from block ~ ~ ~ Items[0].id
clone ~1 ~ ~ ~1 ~-1 ~ ~ ~-1 ~ replace

summon minecraft:falling_block ~ ~ ~ {Tags:["worldtool","wt.pick_block_check"]}
data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] BlockState.Name set from storage worldtool:storage Temp.Item.tag.WorldTool.Block.State.Name
execute store success score #temp worldtool unless data entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] {BlockState:{Name:"minecraft:sand"}}

execute if score #temp worldtool matches 1 run function worldtool:pick_block/other/finish
execute unless score #temp worldtool matches 1 as @a if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui/error/block_not_picked

kill @s
