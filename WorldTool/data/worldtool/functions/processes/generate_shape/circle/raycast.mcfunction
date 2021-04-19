# Draw a line. Circles do consist of lines, yes

scoreboard players add #generationRay worldtool 100
scoreboard players add #genFunctionsRun worldtool 1

execute if score #hollowTemp worldtool matches 1 if score #generationRay worldtool > #rayMaxDistance worldtool run function worldtool:block_place/place_block
execute unless score #hollowTemp worldtool matches 1 run function worldtool:block_place/place_block

execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool unless score #generationRay worldtool > #rayMaxDistance worldtool positioned ^ ^ ^.5000001 run function worldtool:processes/generate_shape/circle/raycast
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool if score #generationRay worldtool > #rayMaxDistance worldtool unless entity @s[tag=wt_dont_continue] run function worldtool:processes/generate_shape/circle/rotate
#execute if score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool run schedule function worldtool:process_load/load2_fill 1t
