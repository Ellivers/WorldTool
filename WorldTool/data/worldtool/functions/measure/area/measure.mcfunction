# Called by various functions
# Measures the area

# 't' = temporary
scoreboard players operation #sizeX worldtool = #pos1xt worldtool
scoreboard players operation #sizeX worldtool -= #pos2xt worldtool
execute if score #sizeX worldtool matches ..-1 run scoreboard players operation #sizeX worldtool *= #-1 worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #pos1yt worldtool
scoreboard players operation #sizeY worldtool -= #pos2yt worldtool
execute if score #sizeY worldtool matches ..-1 run scoreboard players operation #sizeY worldtool *= #-1 worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #pos1zt worldtool
scoreboard players operation #sizeZ worldtool -= #pos2zt worldtool
execute if score #sizeZ worldtool matches ..-1 run scoreboard players operation #sizeZ worldtool *= #-1 worldtool
scoreboard players add #sizeZ worldtool 1

# Final calculations
scoreboard players operation #totalArea worldtool = #sizeX worldtool
scoreboard players operation #totalArea worldtool *= #sizeY worldtool
scoreboard players operation #totalArea worldtool *= #sizeZ worldtool

# Message
execute if entity @s[tag=!wt.no_message] run function worldtool:measure/area/message
tag @s remove wt.no_message

function #worldtool:addon/measure/area_done
