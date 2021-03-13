scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_brushload
execute as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_started_function

#define score_holder $brushFunctionRunning
scoreboard players set $brushFunctionRunning worldtool 1
scoreboard players set $functionRunning worldtool 1

#Set the position 1 variables
execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]

#Make sure the scores for blocks per tick are in a supported range
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4100
execute unless score $coloredBlocksPerTick worldtool matches 2..2500 run scoreboard players set $coloredBlocksPerTick worldtool 2500

#Set the position 2 variables
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:brush/brushes/main/load_function.pos2

#Set the drawing position to position 1
scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

#Reset both how many blocks were checked and how many blocks were placed
scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0

kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=setblock_source]

#Summon different "wt_drawer" AECs depending on which brush the player is using
execute as @a[tag=wt_brushload] if predicate worldtool:brushes/paint run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","wt_drawer","replacefill_reversed","worldtool"]}
execute as @a[tag=wt_brushload,predicate=worldtool:brush/overwrite_blocks] if predicate worldtool:brushes/place run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","wt_drawer","worldtool"]}
execute as @a[tag=wt_brushload,predicate=!worldtool:brush/overwrite_blocks] if predicate worldtool:brushes/place run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","wt_drawer","keep","worldtool"]}

execute if entity @a[tag=wt_brushload,predicate=worldtool:brushes/sphere] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","replacefill","replacing","wt_drawer","worldtool"]}

execute if entity @a[tag=wt_brushload,predicate=worldtool:brushes/replace,predicate=worldtool:brush/replace_normal] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","replacefill","replacing","wt_drawer","worldtool"]}
execute if entity @a[tag=wt_brushload,predicate=worldtool:brushes/replace,predicate=worldtool:brush/replace_exclude] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushing","replacefill_reversed","replacing","wt_drawer","worldtool"]}

scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,sort=nearest,limit=1] wt_ID = @s wt_ID

#Start different processes depending on which brush the player is using
execute if entity @a[tag=wt_brushload,predicate=!worldtool:brushes/replace,predicate=!worldtool:brushes/sphere] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,sort=nearest,limit=1] at @s run function worldtool:processes/brush/paint/paint
execute if entity @a[tag=wt_brushload,predicate=worldtool:brushes/replace] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,sort=nearest,limit=1] at @s run function worldtool:processes/brush/replace/replace
#schedule function worldtool:load_process/load2_fill 1t
execute as @a[tag=wt_brushload] run function worldtool:brush/player_removetags
