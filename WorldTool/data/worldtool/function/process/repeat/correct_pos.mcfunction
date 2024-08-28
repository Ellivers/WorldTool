# Called by various functions
# Corrects the X position

execute if score #tempDir worldtool matches -1 unless score #prevProcessPosX worldtool = #originPosX worldtool run scoreboard players add #processPosX worldtool 1
execute if score #tempDir worldtool matches 1 unless score #prevProcessPosX worldtool = #originPosX worldtool run scoreboard players remove #processPosX worldtool 1
