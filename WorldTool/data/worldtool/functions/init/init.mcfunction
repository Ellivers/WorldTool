#BUILD THE HELICOPTER
#AND OFF TO THE RESCUE
scoreboard objectives add worldtool dummy
scoreboard objectives add wt_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wt_ID dummy
scoreboard objectives add rotX dummy
scoreboard objectives add rotY dummy
scoreboard objectives add rotZ dummy
scoreboard objectives add wt_brush_size dummy
scoreboard objectives add wt_chance dummy
scoreboard objectives add pos2x dummy
scoreboard objectives add pos2y dummy
scoreboard objectives add pos2z dummy
scoreboard objectives add pos1x dummy
scoreboard objectives add pos1y dummy
scoreboard objectives add pos1z dummy

#Set the blocks-per-tick settings to their default values, if they're not in a supported range
execute unless score $blocksPerTick worldtool matches 2..4000 run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2..2100 run scoreboard players set $clonedBlocksPerTick worldtool 2100
#execute unless score $coloredBlocksPerTick worldtool matches 2..2500 run scoreboard players set $coloredBlocksPerTick worldtool 2500
execute unless score $destroyedBlocksPerTick worldtool matches 2..3700 run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $randomizedBlocksPerTick worldtool matches 2..3900 run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $checkeredBlocksPerTick worldtool matches 2..3400 run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2..3200 run scoreboard players set $outlinedBlocksPerTick worldtool 3200
execute unless score $greeneryBlocksPerTick worldtool matches 2..1200 run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2..3300 run scoreboard players set $hollowBlocksPerTick worldtool 3300

execute unless score $particles worldtool matches 0..1 run scoreboard players set $particles worldtool 1
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1

gamerule commandBlockOutput false

#Forceload for access to storing blocks at 0 0
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0

scoreboard players set $20w12a+ worldtool 0
schedule function worldtool:init/check_1.16 1s

schedule function worldtool:init/set_base 2t
function worldtool:particles/main