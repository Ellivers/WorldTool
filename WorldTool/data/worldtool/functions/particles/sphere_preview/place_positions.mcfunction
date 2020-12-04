# Called by worldtool:particles/load_shape_previews
# Summons area effect clouds used for particles in each "corner" of the sphere

execute store result score #positionTempX worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[0] 100
execute store result score #positionTempY worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[1] 100
execute store result score #positionTempZ worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[2] 100

scoreboard players operation #tempRadius worldtool = @s wt_diameter
scoreboard players operation #tempRadius worldtool /= #2 worldtool
scoreboard players operation #tempRadius worldtool *= #100 worldtool

scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","1","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","2","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players operation #tempPos worldtool = #positionTempY worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","3","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=3,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players operation #tempPos worldtool = #positionTempY worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","4","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=4,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","5","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_sphere_preview","6","wt_particles","wt_shape_preview"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,sort=nearest,limit=1] wt_ID = @s wt_ID
execute store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_sphereprev_select
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:particles/sphere_preview/place_positions2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview] if score @s wt_ID = #ID_temp worldtool run tag @s remove wt_sphereprev_select
schedule function worldtool:particles/main 8t append
