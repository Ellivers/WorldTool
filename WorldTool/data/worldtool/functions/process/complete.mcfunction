# Called by various process functions
# Ends the process

scoreboard players operation #processPosX worldtool = #pos2x worldtool
scoreboard players operation #processPosY worldtool = #pos2y worldtool
scoreboard players operation #processPosZ worldtool = #pos2z worldtool

scoreboard players operation #blocksChecked worldtool = #blocksPerTick worldtool
