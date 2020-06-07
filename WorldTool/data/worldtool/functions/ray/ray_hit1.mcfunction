execute at @s positioned ~ ~ ~ as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:ray/del_pos
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["pos1"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=pos1,sort=nearest,limit=1] wt_ID = @s wt_ID

execute if score $forceLoadPositions worldtool matches 1.. run forceload add ~ ~

execute as @e[type=minecraft:area_effect_cloud,tag=pos1,sort=nearest,limit=1] run function worldtool:ray/pos

tellraw @s [{"text":"Set position 1 to "},{"score":{"name":"#posXt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posYt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posZt","objective":"worldtool"}}]
tag @s add nospaceplzthx
function worldtool:ui/anti_feedback_chat_message/load