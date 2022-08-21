# Called by worldtool:process_start/summon
# Commands executed as the writer

scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Processes[-1].Tags[]
execute if data storage worldtool:storage Processes[-1].Positions.1 run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Positions.1
execute if data storage worldtool:storage Processes[-1].Position run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Position

execute store result score @s wt.rotX run data get storage worldtool:storage Processes[-1].Rotation.X
execute store result score @s wt.rotY run data get storage worldtool:storage Processes[-1].Rotation.Y
execute store result score @s wt.rotZ run data get storage worldtool:storage Processes[-1].Rotation.Z

execute if entity @s[tag=wt.from_bottom] run function worldtool:process_start/common/start_from_bottom
execute if entity @s[tag=wt.from_top] run function worldtool:process_start/common/start_from_top
execute if entity @s[tag=wt.from_northwest] run function worldtool:process_start/common/start_from_northwest

function #worldtool:addon/process_start/writer_setup
