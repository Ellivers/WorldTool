#Checks if the arrow has the inBlockState nbt tag, otherwise it gives an error
execute if data entity @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] inBlockState run function worldtool:ui/brush/set/grab_block.success
execute unless data entity @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] inBlockState as @a[tag=grabbing_block] run function worldtool:ui/brush/set/grab_block.error