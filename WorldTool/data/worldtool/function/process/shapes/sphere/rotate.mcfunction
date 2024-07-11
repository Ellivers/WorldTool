# Called by worldtool:process/shapes/sphere/load
# Rotates one step

scoreboard players add #sphereRotations worldtool 1

scoreboard players operation #temp worldtool = #sphereRotations worldtool
scoreboard players operation #temp worldtool *= #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #baseSphereRotation worldtool
execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get #temp worldtool
