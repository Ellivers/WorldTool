# Called by worldtool:pick_block/other/attempt1_2
# If the first method doesn't succeed, try breaking the block instead

scoreboard players operation #ID_temp worldtool = @s wt.ID

setblock ~ ~-1 ~ minecraft:light_blue_shulker_box
loot replace block ~ ~-1 ~ container.0 mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
loot replace block ~ ~-1 ~ container.1 mine ~ ~ ~ minecraft:shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Block.Data set from block ~ ~ ~
data modify storage worldtool:storage Temp.Block.State.Name set from block ~ ~-1 ~ Items[0].id

summon minecraft:falling_block ~ ~ ~ {Tags:["worldtool","wt.pick_block_check"],Time:600,DropItem:0b}
data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] BlockState.Name set from storage worldtool:storage Temp.Block.State.Name
execute store success score #pickBlockTemp worldtool unless data entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] BlockState{Name:"minecraft:sand"}

execute if score #pickBlockTemp worldtool matches 0 run data modify storage worldtool:storage Temp.Block.State.Name set from block ~ ~-1 ~ Items[1].id
execute if score #pickBlockTemp worldtool matches 0 run data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] BlockState.Name set from storage worldtool:storage Temp.Block.State.Name
execute if score #pickBlockTemp worldtool matches 0 store result score #pickBlockTemp worldtool unless data entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.pick_block_check,sort=nearest,limit=1] BlockState{Name:"minecraft:sand"}

clone ~1 ~ ~ ~1 ~-1 ~ ~ ~-1 ~ replace

execute if score #pickBlockTemp worldtool matches 1.. run function worldtool:pick_block/other/finish
execute if score #pickBlockTemp worldtool matches 0 as @a if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui/error/block_not_picked

kill @s
