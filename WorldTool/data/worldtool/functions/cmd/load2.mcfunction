execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]

execute unless score $blocksPerTick worldtool matches 2..4000 run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2..2600 run scoreboard players set $clonedBlocksPerTick worldtool 2600
execute unless score $destroyedBlocksPerTick worldtool matches 2..3700 run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $checkeredBlocksPerTick worldtool matches 2..3400 run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $randomizedBlocksPerTick worldtool matches 2..3900 run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $greeneryBlocksPerTick worldtool matches 2..1400 run scoreboard players set $greeneryBlocksPerTick worldtool 1400

execute store result score $pos2x worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=cmdpos2,limit=1] Pos[0]
execute store result score $pos2y worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=cmdpos2,limit=1] Pos[1]
execute store result score $pos2z worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=cmdpos2,limit=1] Pos[2]

scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

tellraw @a [{"text": "1X: "},{"score": {"name": "$pos1x","objective": "worldtool"}},{"text": " 2X: "},{"score": {"name": "$pos2x","objective": "worldtool"}}]

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0
scoreboard players set $widthX worldtool 1
scoreboard players set $heightY worldtool 1
scoreboard players set $lengthZ worldtool 1

scoreboard players set $checkered worldtool 0

execute unless entity @s[tag=cloning_wt] run kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
execute unless entity @s[tag=cloning_wt] run kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1]
execute unless entity @s[tag=cloning_wt] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","from_cmd","ticking"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] Tags append from entity @s Tags[]
execute if score @s wt_chance = @s wt_chance run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] wt_chance = @s wt_chance
tag @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] remove cmdpos1

execute if entity @s[tag=cloning_wt] run function worldtool:cmd/load_clone1
execute if entity @s[tag=random1] as @e[type=minecraft:area_effect_cloud,tag=cmdrnd1] at @s run function worldtool:cmd/start_random_1
execute if entity @s[tag=!cloning_wt,tag=!random1] run schedule function worldtool:load2_fill 1t