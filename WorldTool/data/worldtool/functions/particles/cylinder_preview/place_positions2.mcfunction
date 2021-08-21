# Called by worldtool:particles/load_shape_previews
# Summons area effect clouds used for particles in each "corner" of the circle at the end of the cylinder

execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","5","wt_particles","wt_shape_preview","up"]}
execute unless entity @s[predicate=!worldtool:orientation/north,predicate=!worldtool:orientation/south] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","5","wt_particles","wt_shape_preview","north"]}
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","5","wt_particles","wt_shape_preview","east"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=5,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","6","wt_particles","wt_shape_preview","up"]}
execute unless entity @s[predicate=!worldtool:orientation/north,predicate=!worldtool:orientation/south] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","6","wt_particles","wt_shape_preview","north"]}
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","6","wt_particles","wt_shape_preview","east"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=6,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempY worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","7","wt_particles","wt_shape_preview","up"]}
execute unless entity @s[predicate=!worldtool:orientation/north,predicate=!worldtool:orientation/south] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","7","wt_particles","wt_shape_preview","north"]}
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","7","wt_particles","wt_shape_preview","east"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=7,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempY worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","8","wt_particles","wt_shape_preview","up"]}
execute unless entity @s[predicate=!worldtool:orientation/north,predicate=!worldtool:orientation/south] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","8","wt_particles","wt_shape_preview","north"]}
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","8","wt_particles","wt_shape_preview","east"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=8,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

# go join Minecraft Commands if you haven't already: https://discord.gg/QAFXFtZ
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_cylinderprev_select
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:particles/cylinder_preview/place_positions3
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview] if score @s wt_ID = #ID_temp worldtool run tag @s remove wt_cylinderprev_select
schedule function worldtool:particles/main 8t replace
