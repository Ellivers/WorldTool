# Called by worldtool:particles/load_shape_previews
# Summons area effect clouds used for particles in each "corner" of the circle at the start of the cylinder

execute store result score #positionTempX worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[0] 100
execute store result score #positionTempY worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[1] 100
execute store result score #positionTempZ worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,sort=nearest,limit=1] Pos[2] 100

scoreboard players operation #tempRadius worldtool = @s wt_diameter
scoreboard players operation #tempRadius worldtool /= #2 worldtool
scoreboard players operation #tempRadius worldtool *= #100 worldtool

execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
execute if predicate worldtool:orientation/up run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","up"]}
execute if predicate worldtool:orientation/down run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","down"]}
execute if predicate worldtool:orientation/north run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","north"]}
execute if predicate worldtool:orientation/south run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","south"]}
execute if predicate worldtool:orientation/east run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","east"]}
execute if predicate worldtool:orientation/west run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","1","wt_particles","wt_shape_preview","west"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=1,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] run scoreboard players operation #tempPos worldtool = #positionTempX worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
execute if predicate worldtool:orientation/up run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","up"]}
execute if predicate worldtool:orientation/down run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","down"]}
execute if predicate worldtool:orientation/north run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","north"]}
execute if predicate worldtool:orientation/south run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","south"]}
execute if predicate worldtool:orientation/east run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","east"]}
execute if predicate worldtool:orientation/west run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","2","wt_particles","wt_shape_preview","west"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=2,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempY worldtool
# DEBUG
#tellraw @a ["Original Y: ",{"score": {"name": "#positionTempY","objective": "worldtool"}}]
#tellraw @a ["Temporary position: ",{"score": {"name": "#tempPos","objective": "worldtool"}}]
scoreboard players operation #tempPos worldtool += #tempRadius worldtool
execute if predicate worldtool:orientation/up run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","up"]}
execute if predicate worldtool:orientation/down run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","down"]}
execute if predicate worldtool:orientation/north run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","north"]}
execute if predicate worldtool:orientation/south run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","south"]}
execute if predicate worldtool:orientation/east run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","east"]}
execute if predicate worldtool:orientation/west run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","3","wt_particles","wt_shape_preview","west"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=3,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempZ worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] run scoreboard players operation #tempPos worldtool = #positionTempY worldtool
scoreboard players operation #tempPos worldtool -= #tempRadius worldtool
execute if predicate worldtool:orientation/up run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","up"]}
execute if predicate worldtool:orientation/down run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","down"]}
execute if predicate worldtool:orientation/north run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","north"]}
execute if predicate worldtool:orientation/south run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","south"]}
execute if predicate worldtool:orientation/east run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","east"]}
execute if predicate worldtool:orientation/west run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt_cylinder_preview","4","wt_particles","wt_shape_preview","west"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=4,sort=nearest,limit=1] wt_ID = @s wt_ID
execute unless entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get #tempPos worldtool
execute if entity @s[predicate=!worldtool:orientation/up,predicate=!worldtool:orientation/down] store result entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,sort=nearest,limit=1] Pos[1] double 0.01 run scoreboard players get #tempPos worldtool

scoreboard players reset #rayTemp worldtool
function worldtool:particles/cylinder_preview/place_positions1.5
