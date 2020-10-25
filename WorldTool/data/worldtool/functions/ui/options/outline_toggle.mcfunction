execute if entity @s[tag=!wt_outline_selection] run tag @s add settingoutline
execute if entity @s[tag=!wt_outline_selection] run tag @s add wt_outline_selection
execute if entity @s[tag=!settingoutline,tag=wt_outline_selection] run execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2] if score @s wt_ID = @p wt_ID run function worldtool:ui/outline/off/positions
execute if entity @s[tag=!settingoutline,tag=wt_outline_selection] run tag @s remove wt_outline_selection
tag @s remove settingoutline
function worldtool:ui/options/nudge/select