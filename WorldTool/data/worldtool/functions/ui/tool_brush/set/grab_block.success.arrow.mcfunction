# Called by worldtool:brush/grab_block.success
# Splits picking a block to replace, and picking a block to place

data modify storage worldtool:storage BlockGrab set from entity @s inBlockState
execute if entity @s[tag=brush_normal] as @a[tag=grabbing_block,tag=!grabbing_block_replace,tag=!grabbing_block_gentool] at @s run function worldtool:ui/tool_brush/set/grab_block
execute if entity @s[tag=brush_replace] as @a[tag=grabbing_block,tag=grabbing_block_replace] at @s run function worldtool:ui/tool_brush/set/grab_block_replace
execute if entity @s[tag=gentool] as @a[tag=grabbing_block,tag=grabbing_block_gentool] at @s run function worldtool:ui/tool_shapes/select/grab_block
