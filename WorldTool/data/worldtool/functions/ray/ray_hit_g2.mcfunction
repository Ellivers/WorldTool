tag @s remove wt_generation
execute if score $functionRunning worldtool matches 1.. run tellraw @s {"text": "Another process is currently running","color":"red"}
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_generation_marker","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] wt_ID = @s wt_ID
function worldtool:generate_shape/get_block
