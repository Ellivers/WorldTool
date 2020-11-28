scoreboard players set #axisTemp worldtool 4

scoreboard players operation #shapePrecision worldtool = @s wt_precision
scoreboard players operation #generationRadius worldtool = @s wt_diameter
scoreboard players operation #generationRadius worldtool /= #2 worldtool
scoreboard players operation #rayMaxDistance worldtool = #generationRadius worldtool
scoreboard players operation #rayMaxDistance worldtool *= #2 worldtool
scoreboard players operation #xRot worldtool = @s wt_rotX
scoreboard players operation #yRot worldtool = @s wt_rotY
scoreboard players operation #maxRotation worldtool = @s wt_degrees
scoreboard players operation #maxRotation worldtool += @s wt_rotX
execute if score #maxRotation worldtool matches 360.. run scoreboard players remove #maxRotation worldtool 360
scoreboard players operation #maxRotation worldtool *= #100 worldtool
scoreboard players operation #maxDegrees worldtool = @s wt_degrees
scoreboard players operation #maxDegrees worldtool *= #100 worldtool
scoreboard players set #totalRotationX worldtool 0
scoreboard players set #totalRotationY worldtool 0
scoreboard players set #stopGenerating worldtool 0
scoreboard players set #genFunctionsRun worldtool 0
scoreboard players set $blocksplaced worldtool 0
scoreboard players set #generationRay worldtool 0
scoreboard players set #blockschecked worldtool 0

scoreboard players set #sCurrentRot worldtool 0
scoreboard players set #sTotalRot worldtool 0
scoreboard players set #sMaxRotation worldtool 0
scoreboard players set #sMaxDegrees worldtool 18000

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = @p wt_ID run kill @s

scoreboard players set $functionRunning worldtool 1
execute if score $progressBar worldtool matches 1.. run function worldtool:generate_shape/circle/get_area
execute if score $progressBar worldtool matches 1.. run scoreboard players operation $blocksplaced worldtool *= #maxHeight worldtool

execute unless predicate worldtool:shapes/keep run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","worldtool","wt_spheregen","wt_circlegen","wt_generator"]}
execute if predicate worldtool:shapes/keep run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","worldtool","wt_spheregen","wt_circlegen","keep","wt_generator"]}
execute as @e[type=minecraft:area_effect_cloud,tag=wt_circlegen,sort=nearest,limit=1] run function worldtool:generate_shape/circle/start.entity
