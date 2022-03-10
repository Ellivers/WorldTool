# Called by worldtool:process_end/load
# Calculates the dimensions of the filtered block(s)

scoreboard players operation #sizeX worldtool = #maxX worldtool
scoreboard players operation #sizeX worldtool -= #minX worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #maxY worldtool
scoreboard players operation #sizeY worldtool -= #minY worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #maxZ worldtool
scoreboard players operation #sizeZ worldtool -= #minZ worldtool
scoreboard players add #sizeZ worldtool 1
