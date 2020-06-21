kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clonepos"]}

execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","ticking"]}

execute as @e[type=minecraft:area_effect_cloud,tag=clonepos,limit=1] run function worldtool:ray/pos

clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b} 1
give @s minecraft:carrot_on_a_stick{worldTool:1b,Type:1b,Unbreakable:1b,Enchantments:[{}],display:{Name:'{"text":"Set position 1","italic":false}'}}
tag @s remove setclonepos
execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cloning_wt

execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!filtered,tag=!filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ 1 ~ ~ 1 ~ 2 1 13 replace move
execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!filtered,tag=!filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~1 1 ~ ~1 1 ~ ~ 1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s

tellraw @s [{"text":"Set clone destination to "},{"score":{"name":"#posXt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posYt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posZt","objective":"worldtool"}}]
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID run function worldtool:load_function/load_fill