execute at @s positioned ~ ~ ~ as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID run kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["randomcorner1"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=randomcorner1,sort=nearest,limit=1] wt_ID = @s wt_ID

execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1,sort=nearest,limit=1] run function worldtool:ray/pos

tellraw @s [{"text":"Set randomizer origin position 1 to "},{"score":{"name":"#posXt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posYt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posZt","objective":"worldtool"}}]
function worldtool:ui/random/setcorner1