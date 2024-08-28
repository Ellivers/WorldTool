# Called by various functions
# Corrects the X position

execute if score #tempDir worldtool matches -1 unless score #prevProcessPosX worldtool = #processPosX worldtool run scoreboard players add #processPosX worldtool 1
execute if score #tempDir worldtool matches 1 unless score #prevProcessPosX worldtool = #processPosX worldtool run scoreboard players remove #processPosX worldtool 1
execute if score #tempDir worldtool matches -2 unless score #prevProcessPosY worldtool = #processPosY worldtool run scoreboard players add #processPosY worldtool 1
execute if score #tempDir worldtool matches 2 unless score #prevProcessPosY worldtool = #processPosY worldtool run scoreboard players remove #processPosY worldtool 1
execute if score #tempDir worldtool matches -3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool run scoreboard players add #processPosZ worldtool 1
execute if score #tempDir worldtool matches 3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool run scoreboard players remove #processPosZ worldtool 1
