# Called by worldtool:brush/grab_block.check
# Gives an error if the arrow isn't stuck in any block

function worldtool:ui/cancel
kill @e[type=minecraft:arrow,tag=switch_block_brush]
tellraw @s {"text":"\n\nCouldn't pick this block. Either it's not solid or something went wrong.","color":"red"}
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~