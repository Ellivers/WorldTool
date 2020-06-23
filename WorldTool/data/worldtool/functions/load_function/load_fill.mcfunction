execute at @a if score @s wt_ID = @p wt_ID as @p run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n"}

execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]

#Set the blocks-per-tick settings to their default values if they're not in a supported range
execute unless score $blocksPerTick worldtool matches 2..4000 run scoreboard players set $blocksPerTick worldtool 4100
execute unless score $clonedBlocksPerTick worldtool matches 2..2100 run scoreboard players set $clonedBlocksPerTick worldtool 2100
execute unless score $destroyedBlocksPerTick worldtool matches 2..3700 run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $checkeredBlocksPerTick worldtool matches 2..3400 run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2..3200 run scoreboard players set $checkeredBlocksPerTick worldtool 3200
execute unless score $randomizedBlocksPerTick worldtool matches 2..3900 run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $greeneryBlocksPerTick worldtool matches 2..1200 run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2..3500 run scoreboard players set $hollowBlocksPerTick worldtool 3500

execute at @a if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run function worldtool:load_function/load_fill.pos2

scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0
scoreboard players set #cmdblockschecked worldtool 0

scoreboard players set $checkered worldtool 0

tag @s remove measuredX
tag @s remove measuredY

execute at @a if score @s wt_ID = @p wt_ID run scoreboard players operation @s rotX = @p rotX
execute at @a if score @s wt_ID = @p wt_ID run scoreboard players operation @s rotY = @p rotY
execute at @a if score @s wt_ID = @p wt_ID run scoreboard players operation @s rotZ = @p rotZ

execute if entity @s[tag=!cloning_wt] run kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1]
execute if entity @s[tag=!cloning_wt] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","ticking"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] Tags append from entity @s Tags[]
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] wt_ID = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] run function worldtool:load_function/load_fill.wtd

schedule function worldtool:load_function/load2_fill 1t