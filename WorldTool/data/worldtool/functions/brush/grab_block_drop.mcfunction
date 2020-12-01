# Get the loot of the block if getting it through arrow NBT doesn't work

setblock ~ ~-1 ~ minecraft:shulker_box
loot replace block ~ ~-1 ~ container.1 mine ~ ~ ~
data remove storage worldtool:storage BlockGrab
data modify storage worldtool:storage BlockGrab.Name set from block ~ ~-1 ~ Items[0].id

summon minecraft:falling_block ~ ~ ~ {Tags:["worldtool","wt_block_get_check"]}
data modify entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt_block_get_check,sort=nearest,limit=1] BlockState.Name set from storage worldtool:storage BlockGrab.Name
execute store success score #dropGrabSuccess worldtool unless data entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt_block_get_check,sort=nearest,limit=1] {BlockState:{Name:"minecraft:sand"}}

execute if score #dropGrabSuccess worldtool matches 1 if entity @s[tag=brush_normal] as @a[tag=grabbing_block,tag=!grabbing_block_replace,tag=!grabbing_block_gentool] at @s run function worldtool:ui/brush/set/grab_block
execute if score #dropGrabSuccess worldtool matches 1 if entity @s[tag=brush_replace] as @a[tag=grabbing_block,tag=grabbing_block_replace] at @s run function worldtool:ui/brush/set/grab_block_replace
execute if score #dropGrabSuccess worldtool matches 1 if entity @s[tag=gentool] as @a[tag=grabbing_block,tag=grabbing_block_gentool] at @s run function worldtool:ui/generation_tool/select/grab_block
execute unless score #dropGrabSuccess worldtool matches 1 as @a[tag=grabbing_block] run function worldtool:ui/brush/set/grab_block.error
