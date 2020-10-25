execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add replacefill_reversed
function worldtool:ui/replace/select_replace1