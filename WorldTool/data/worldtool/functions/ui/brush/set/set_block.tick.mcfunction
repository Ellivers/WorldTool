execute at @e[type=minecraft:area_effect_cloud,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~
#kill @e[type=minecraft:area_effect_cloud,tag=brush_grab_marker]
execute as @a[tag=setting_brush_block] at @s run function worldtool:ui/brush/set/set_block
execute as @a[tag=setting_bb_replace] at @s run function worldtool:ui/brush/select_replace/selected