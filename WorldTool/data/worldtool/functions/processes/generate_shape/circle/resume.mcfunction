scoreboard players set #genFunctionsRun worldtool 0
scoreboard players set #generationRay worldtool 0
function worldtool:processes/generate_shape/circle/raycast
#execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool if score #generationRay worldtool > #rayMaxDistance worldtool run function worldtool:processes/generate_shape/circle/rotate
