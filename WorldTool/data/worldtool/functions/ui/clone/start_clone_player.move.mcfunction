summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clonepos"]}
tp @e[type=minecraft:area_effect_cloud,tag=clonepos] ~ ~ ~

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","ticking"]}

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!filtered,tag=!filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ 1 ~ ~ 1 ~ 2 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!filtered,tag=!filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~1 1 ~ ~1 1 ~ ~ 1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s

execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cloning_wt
execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add moveclone
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_fill
function worldtool:ui/anti_feedback_chat_message/load