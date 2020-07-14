tag @s add random_2
execute at @s as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID at @s run function worldtool:ray/del_pos
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["randomcorner2"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=randomcorner2,sort=nearest,limit=1] wt_ID = @s wt_ID

execute if score $forceLoadPositions worldtool matches 1.. store success score @e[type=minecraft:area_effect_cloud,tag=randomcorner2,sort=nearest,limit=1] worldtool run forceload add ~ ~

execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner2,sort=nearest,limit=1] run function worldtool:ray/pos

tellraw @s [{"text":"Set randomizer origin position 2 to "},{"score":{"name":"#posXt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posYt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posZt","objective":"worldtool"}},"\nLoading..."]
function worldtool:load_function/load_random_check