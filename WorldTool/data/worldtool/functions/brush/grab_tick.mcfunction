execute at @e[type=minecraft:area_effect_cloud,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~
#kill @e[type=minecraft:area_effect_cloud,tag=brush_grab_marker]
function worldtool:brush/grab_block.check