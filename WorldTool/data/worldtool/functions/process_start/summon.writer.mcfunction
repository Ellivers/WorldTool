# Called by worldtool:process_start/summon
# Commands executed as the writer

scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Processes[-1].Tags[]
execute if data storage worldtool:storage Processes[-1].Positions.1 run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Positions.1
execute if data storage worldtool:storage Processes[-1].Position run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Position

execute store result score @s wt.rotX run data get storage worldtool:storage Processes[-1].Rotation.X
execute store result score @s wt.rotY run data get storage worldtool:storage Processes[-1].Rotation.Y
execute store result score @s wt.rotZ run data get storage worldtool:storage Processes[-1].Rotation.Z

function #worldtool:addon/process_start/writer_setup
