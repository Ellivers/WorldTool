# Draw a line. Circles do consist of lines, yes

function worldtool:block_place/place_block
scoreboard players add #generationRay worldtool 1
scoreboard players add #genFunctionsRun worldtool 1
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool if score #generationRay worldtool > #rayMaxDistance worldtool run function worldtool:generate_shape/circle/rotate
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool unless score #generationRay worldtool > #rayMaxDistance worldtool positioned ^ ^ ^.5 run function worldtool:generate_shape/circle/raycast
#execute if score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
