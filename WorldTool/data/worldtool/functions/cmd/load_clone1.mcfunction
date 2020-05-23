execute at @e[type=minecraft:area_effect_cloud,tag=cmdpos1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","from_cmd"]}
execute at @e[type=minecraft:area_effect_cloud,tag=cmdclonedest] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clonepos"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] Tags append from entity @s Tags[]

execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer] at @s run function worldtool:cmd/load_clone2