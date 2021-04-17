execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["from_cmd","worldtool"], UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdclonedest] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clonepos","worldtool"]}
data modify entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Tags append from entity @s Tags[]

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:cmd/load/load_clone2