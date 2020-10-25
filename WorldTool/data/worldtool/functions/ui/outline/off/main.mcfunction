tag @s remove wt_outline_selection
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2] if score @s wt_ID = @p wt_ID run function worldtool:ui/outline/off/positions
function worldtool:ui/select