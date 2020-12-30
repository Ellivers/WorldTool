# Called by worldtool:brush/grab_block.check
# Gives an error if no valid block could be picked

tag @s remove grabbing_block
tag @s remove grabbing_block_replace
tag @s remove grabbing_block_gentool

function worldtool:ui/cancel
kill @e[type=minecraft:arrow,tag=switch_block_brush]
tellraw @s {"text":"\n\nCouldn't pick this block. Either this block cannot be picked, or something went wrong.","color":"red"}
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~
