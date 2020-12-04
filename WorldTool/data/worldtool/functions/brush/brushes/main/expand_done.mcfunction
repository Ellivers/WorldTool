execute if entity @s[tag=wt_expand_positive] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushpos1","worldtool"]}
execute if entity @s[tag=wt_expand_negative] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushpos2","worldtool"]}
execute if entity @s[tag=wt_expand_positive] run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1,sort=nearest,limit=1] wt_ID = @s wt_ID
execute if entity @s[tag=wt_expand_negative] run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2,sort=nearest,limit=1] wt_ID = @s wt_ID

#execute if entity @s[tag=wt_expand_negative] run say 1
#execute if entity @s[tag=wt_expand_positive] run say 2

execute if entity @s[tag=wt_expand_positive] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1,sort=nearest,limit=1] at @s run function worldtool:brush/brushes/main/load_function
