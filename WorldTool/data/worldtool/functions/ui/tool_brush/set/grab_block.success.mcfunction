# Called by worldtool:brush/grab_block.check
# If the arrow didn't get a block, try getting it another way
execute if data entity @s inBlockState run function worldtool:ui/tool_brush/set/grab_block.success.arrow
execute unless data entity @s inBlockState at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker,sort=nearest,limit=1] run function worldtool:brush/grab_block_drop
