# Called by worldtool:ray/raycast_done
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_waiting_marker","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker,sort=nearest,limit=1] wt_ID = @s wt_ID

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp worldtool run function worldtool:ray/pos

clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b}
loot give @s loot worldtool:general_tool
execute at @s run playsound minecraft:entity.item.pickup master @s
tag @s remove setclonepos

tellraw @s ["",{"text":"Set clone destination to "},{"score":{"name":"#posXt","objective":"worldtool"}}," ",{"score":{"name":"#posYt","objective":"worldtool"}}," ",{"score":{"name":"#posZt","objective":"worldtool"}}]

function worldtool:ui_general/clone/start.check1
