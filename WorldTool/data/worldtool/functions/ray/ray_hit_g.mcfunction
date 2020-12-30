tag @s remove wt_generation
execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = @p wt_ID run kill @s
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_generation_marker","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] wt_ID = @s wt_ID

execute if entity @s[tag=wt_outline_selection] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/load_shape_preview

function worldtool:ui/tool_shapes/select
