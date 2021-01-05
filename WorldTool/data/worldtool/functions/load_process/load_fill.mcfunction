scoreboard players set #posSelected worldtool 1
# Clear the chat (as the player that this entity belongs to)
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool run function worldtool:ui/clear_chat

#define score_holder $functionRunning
scoreboard players set $functionRunning worldtool 1

# Get the positions of this entity (AKA pos1)
execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]

#Set the blocks-per-tick settings to their default values if they're not in a supported range
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2.. run scoreboard players set $clonedBlocksPerTick worldtool 2100
execute unless score $destroyedBlocksPerTick worldtool matches 2.. run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $checkeredBlocksPerTick worldtool matches 2.. run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2.. run scoreboard players set $checkeredBlocksPerTick worldtool 3200
execute unless score $randomizedBlocksPerTick worldtool matches 2.. run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $greeneryBlocksPerTick worldtool matches 2.. run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2.. run scoreboard players set $hollowBlocksPerTick worldtool 3300

# Get the positions of pos2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:load_process/load_fill.pos2

# Set the current position where blocks are being drawn
scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set #blockschecked worldtool 0
scoreboard players set #cmdblockschecked worldtool 0

scoreboard players set $checkered worldtool 0
scoreboard players set #checkeredX worldtool 1
scoreboard players set #checkeredY worldtool 1
scoreboard players set #checkeredZ worldtool 1
execute if entity @s[tag=wt_nochX] run scoreboard players set #checkeredX worldtool 0
execute if entity @s[tag=wt_nochY] run scoreboard players set #checkeredY worldtool 0
execute if entity @s[tag=wt_nochZ] run scoreboard players set #checkeredZ worldtool 0

tag @s remove measuredX
tag @s remove measuredY

# Summon the drawer (when cloning, the drawer has already been summoned)
execute if entity @s[tag=!cloning_wt] run kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]
execute if entity @s[tag=!cloning_wt] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","ticking","worldtool"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,sort=nearest,limit=1] Tags append from entity @s Tags[]

# When randomizing, make sure to fill from the bottom up, to try making sure blocks that need support don't pop off
execute if entity @s[tag=random2] if score $pos1y worldtool > $pos2y worldtool run function worldtool:load_process/switch_y_levels

# Some stuff
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,sort=nearest,limit=1] run function worldtool:load_process/load_fill.wtd
scoreboard players set $blocksplaced worldtool 0

# Start
schedule function worldtool:load_process/load2_fill 1t
