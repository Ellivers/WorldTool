# Called by worldtool:brush/grab_block.check
# Splits picking a block to replace, and picking a block to place
execute as @a[tag=grabbing_block,tag=!grabbing_block_replace] at @s run function worldtool:ui/brush/set/grab_block
execute as @a[tag=grabbing_block,tag=grabbing_block_replace] at @s run function worldtool:ui/brush/set/grab_block_replace