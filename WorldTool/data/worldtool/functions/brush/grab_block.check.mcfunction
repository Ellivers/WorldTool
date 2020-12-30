# Called by worldtool:brush/grab_tick
execute unless entity @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker,limit=1] run function worldtool:brush/grab_block_drop
execute as @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] at @s run function worldtool:ui/tool_brush/set/grab_block.success
