# Called by worldtool:ray/raycast_done
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ray/del_pos
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["pos2","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,sort=nearest,limit=1] wt_ID = @s wt_ID

execute if score $forceLoadPositions worldtool matches 1.. store success score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,sort=nearest,limit=1] worldtool run forceload add ~ ~

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,sort=nearest,limit=1] run function worldtool:ray/pos

tellraw @s ["",{"text":"Set position 2 to "},{"score":{"name":"#posXt","objective":"worldtool"}}," ",{"score":{"name":"#posYt","objective":"worldtool"}}," ",{"score":{"name":"#posZt","objective":"worldtool"}}]
tag @s add nospaceplzthx
function worldtool:ui_general/anti_feedback_chat_message/load