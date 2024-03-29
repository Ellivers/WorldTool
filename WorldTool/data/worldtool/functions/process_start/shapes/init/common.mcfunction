# Called by various shape generation initiation functions
# Common setup for shapes

scoreboard players set #processPosX worldtool 0
scoreboard players set #processPosY worldtool 0
scoreboard players set #processPosZ worldtool 0
scoreboard players set #pos2x worldtool 1
scoreboard players set #pos2y worldtool 1
scoreboard players set #pos2z worldtool 1

execute store result score #precision_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Precision
scoreboard players operation #precision_positive_temp worldtool = #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #precision_positive_temp worldtool *= #-1 worldtool

scoreboard players set #degreesPerRotation worldtool 1000000
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #degreesPerRotation worldtool /= #precision_positive_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #degreesPerRotation worldtool *= #precision_positive_temp worldtool

scoreboard players operation #rotations worldtool = #shapeDegrees worldtool
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #rotations worldtool *= #precision_positive_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #rotations worldtool /= #precision_positive_temp worldtool

execute store result score #shape_y_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.YRotation

scoreboard players set #circleMode worldtool 0
execute if score #fullLength worldtool matches 1 run scoreboard players set #circleMode worldtool 1

scoreboard players set #circleRotations worldtool 0
