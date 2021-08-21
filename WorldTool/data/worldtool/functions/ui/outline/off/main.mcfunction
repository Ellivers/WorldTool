tag @s remove wt_outline_selection
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui/outline/off/positions
function worldtool:ui/select
